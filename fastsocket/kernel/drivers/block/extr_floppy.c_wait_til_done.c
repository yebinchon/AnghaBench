
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ reset; } ;


 int DECLARE_WAITQUEUE (int ,int ) ;
 int EINTR ;
 int EIO ;
 TYPE_1__* FDCS ;
 int FD_COMMAND_ERROR ;
 int FD_COMMAND_NONE ;
 int FD_COMMAND_OKAY ;
 scalar_t__ NO_SIGNAL ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int TASK_UNINTERRUPTIBLE ;
 int add_wait_queue (int *,int *) ;
 int cancel_activity () ;
 int command_done ;
 int command_status ;
 int * cont ;
 int current ;
 int intr_cont ;
 int is_alive (char*) ;
 int remove_wait_queue (int *,int *) ;
 int reset_fdc () ;
 int schedule () ;
 int schedule_bh (void (*) ()) ;
 int set_current_state (int ) ;
 int wait ;

__attribute__((used)) static int wait_til_done(void (*handler)(void), int interruptible)
{
 int ret;

 schedule_bh(handler);

 if (command_status < 2 && NO_SIGNAL) {
  DECLARE_WAITQUEUE(wait, current);

  add_wait_queue(&command_done, &wait);
  for (;;) {
   set_current_state(interruptible ?
       TASK_INTERRUPTIBLE :
       TASK_UNINTERRUPTIBLE);

   if (command_status >= 2 || !NO_SIGNAL)
    break;

   is_alive("wait_til_done");
   schedule();
  }

  set_current_state(TASK_RUNNING);
  remove_wait_queue(&command_done, &wait);
 }

 if (command_status < 2) {
  cancel_activity();
  cont = &intr_cont;
  reset_fdc();
  return -EINTR;
 }

 if (FDCS->reset)
  command_status = FD_COMMAND_ERROR;
 if (command_status == FD_COMMAND_OKAY)
  ret = 0;
 else
  ret = -EIO;
 command_status = FD_COMMAND_NONE;
 return ret;
}
