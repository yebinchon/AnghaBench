
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pending_commands; } ;
struct cardstate {scalar_t__ mstate; int commands_pending; TYPE_1__ at_state; } ;


 int DEBUG_CMD ;
 scalar_t__ MS_READY ;
 scalar_t__ MS_SHUTDOWN ;
 int PC_SHUTDOWN ;
 int finish_shutdown (struct cardstate*) ;
 int gig_dbg (int ,char*) ;
 int gigaset_block_channels (struct cardstate*) ;

__attribute__((used)) static void do_shutdown(struct cardstate *cs)
{
 gigaset_block_channels(cs);

 if (cs->mstate == MS_READY) {
  cs->mstate = MS_SHUTDOWN;
  cs->at_state.pending_commands |= PC_SHUTDOWN;
  cs->commands_pending = 1;
  gig_dbg(DEBUG_CMD, "Scheduling PC_SHUTDOWN");
 } else
  finish_shutdown(cs);
}
