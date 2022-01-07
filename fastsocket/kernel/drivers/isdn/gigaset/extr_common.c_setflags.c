
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cardstate {unsigned int control_state; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* set_modem_ctrl ) (struct cardstate*,unsigned int,unsigned int) ;} ;


 unsigned int HZ ;
 int TASK_INTERRUPTIBLE ;
 int schedule_timeout (unsigned int) ;
 int set_current_state (int ) ;
 int stub1 (struct cardstate*,unsigned int,unsigned int) ;

__attribute__((used)) static int setflags(struct cardstate *cs, unsigned flags, unsigned delay)
{
 int r;

 r = cs->ops->set_modem_ctrl(cs, cs->control_state, flags);
 cs->control_state = flags;
 if (r < 0)
  return r;

 if (delay) {
  set_current_state(TASK_INTERRUPTIBLE);
  schedule_timeout(delay * HZ / 1000);
 }

 return 0;
}
