
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cardstate {int commands_pending; } ;
struct at_state_t {int pending_commands; struct cardstate* cs; } ;


 int DEBUG_CMD ;
 int PC_ACCEPT ;
 int PC_HUP ;
 int gig_dbg (int ,char*) ;
 int gigaset_isdn_setup_accept (struct at_state_t*) ;

__attribute__((used)) static void start_accept(struct at_state_t *at_state)
{
 struct cardstate *cs = at_state->cs;
 int retval;

 retval = gigaset_isdn_setup_accept(at_state);

 if (retval == 0) {
  at_state->pending_commands |= PC_ACCEPT;
  gig_dbg(DEBUG_CMD, "Scheduling PC_ACCEPT");
  cs->commands_pending = 1;
 } else {

  at_state->pending_commands |= PC_HUP;
  gig_dbg(DEBUG_CMD, "Scheduling PC_HUP");
  cs->commands_pending = 1;
 }
}
