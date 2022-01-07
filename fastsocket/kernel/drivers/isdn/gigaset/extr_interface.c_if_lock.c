
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cardstate {scalar_t__ mstate; int control_state; int waiting; int cmd_result; int waitqueue; int at_state; TYPE_1__* ops; scalar_t__ connected; int minor_index; } ;
struct TYPE_2__ {int (* set_line_ctrl ) (struct cardstate*,int ) ;int (* baud_rate ) (struct cardstate*,int ) ;int (* set_modem_ctrl ) (struct cardstate*,int ,int) ;} ;


 int B115200 ;
 int CS8 ;
 int DEBUG_CMD ;
 int DEBUG_IF ;
 int EINVAL ;
 int ENOMEM ;
 int EV_IF_LOCK ;
 scalar_t__ MS_LOCKED ;
 int TIOCM_DTR ;
 int TIOCM_RTS ;
 int gig_dbg (int ,char*,...) ;
 int gigaset_add_event (struct cardstate*,int *,int ,int *,int,int *) ;
 int gigaset_schedule_event (struct cardstate*) ;
 int stub1 (struct cardstate*,int ,int) ;
 int stub2 (struct cardstate*,int ) ;
 int stub3 (struct cardstate*,int ) ;
 int wait_event (int ,int) ;

__attribute__((used)) static int if_lock(struct cardstate *cs, int *arg)
{
 int cmd = *arg;

 gig_dbg(DEBUG_IF, "%u: if_lock (%d)", cs->minor_index, cmd);

 if (cmd > 1)
  return -EINVAL;

 if (cmd < 0) {
  *arg = cs->mstate == MS_LOCKED;
  return 0;
 }

 if (!cmd && cs->mstate == MS_LOCKED && cs->connected) {
  cs->ops->set_modem_ctrl(cs, 0, TIOCM_DTR|TIOCM_RTS);
  cs->ops->baud_rate(cs, B115200);
  cs->ops->set_line_ctrl(cs, CS8);
  cs->control_state = TIOCM_DTR|TIOCM_RTS;
 }

 cs->waiting = 1;
 if (!gigaset_add_event(cs, &cs->at_state, EV_IF_LOCK,
          ((void*)0), cmd, ((void*)0))) {
  cs->waiting = 0;
  return -ENOMEM;
 }

 gig_dbg(DEBUG_CMD, "scheduling IF_LOCK");
 gigaset_schedule_event(cs);

 wait_event(cs->waitqueue, !cs->waiting);

 if (cs->cmd_result >= 0) {
  *arg = cs->cmd_result;
  return 0;
 }

 return cs->cmd_result;
}
