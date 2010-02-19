-module(erlctl_sup).
-behavior(supervisor).

-export([start_link/0,init/1]).

start_link() ->
  supervisor:start_link(?MODULE,[]).

init(_Args) ->
  Restart = {one_for_all,5,1},
  %Handler = {
  %  erlctl_handler,
  %  {gen_event, start_link, [ {local, erlctl_handler} ]},
  %  permanent, 5000, worker, dynamic
  %},
  Children = [
  %  Handler
  ],
  {ok,{Restart,Children}}.
