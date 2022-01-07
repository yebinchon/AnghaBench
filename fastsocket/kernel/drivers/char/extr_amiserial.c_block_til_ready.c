
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wait_queue {int * member_1; int member_0; } ;
struct tty_struct {int flags; TYPE_1__* termios; } ;
struct serial_state {int count; int line; } ;
struct file {int f_flags; } ;
struct async_struct {int flags; int line; int blocked_open; int open_wait; int close_wait; struct serial_state* state; } ;
struct TYPE_4__ {int pra; } ;
struct TYPE_3__ {int c_cflag; } ;


 int ASYNC_CLOSING ;
 int ASYNC_HUP_NOTIFY ;
 int ASYNC_INITIALIZED ;
 int ASYNC_NORMAL_ACTIVE ;
 int CBAUD ;
 int CLOCAL ;
 int DECLARE_WAITQUEUE (int ,int ) ;
 int EAGAIN ;
 int ERESTARTSYS ;
 int O_NONBLOCK ;
 int SER_DCD ;
 int SER_DTR ;
 int SER_RTS ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int TTY_IO_ERROR ;
 int __set_current_state (int ) ;
 int add_wait_queue (int *,struct wait_queue*) ;
 TYPE_2__ ciab ;
 int current ;
 int interruptible_sleep_on (int *) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int printk (char*,int ,int ) ;
 int remove_wait_queue (int *,struct wait_queue*) ;
 int rtsdtr_ctrl (int) ;
 int schedule () ;
 int set_current_state (int ) ;
 scalar_t__ signal_pending (int ) ;
 scalar_t__ tty_hung_up_p (struct file*) ;
 struct wait_queue wait ;

__attribute__((used)) static int block_til_ready(struct tty_struct *tty, struct file * filp,
      struct async_struct *info)
{



 struct wait_queue wait = { current, ((void*)0) };

 struct serial_state *state = info->state;
 int retval;
 int do_clocal = 0, extra_count = 0;
 unsigned long flags;





 if (tty_hung_up_p(filp) ||
     (info->flags & ASYNC_CLOSING)) {
  if (info->flags & ASYNC_CLOSING)
   interruptible_sleep_on(&info->close_wait);




  return -EAGAIN;

 }





 if ((filp->f_flags & O_NONBLOCK) ||
     (tty->flags & (1 << TTY_IO_ERROR))) {
  info->flags |= ASYNC_NORMAL_ACTIVE;
  return 0;
 }

 if (tty->termios->c_cflag & CLOCAL)
  do_clocal = 1;
 retval = 0;
 add_wait_queue(&info->open_wait, &wait);




 local_irq_save(flags);
 if (!tty_hung_up_p(filp)) {
  extra_count = 1;
  state->count--;
 }
 local_irq_restore(flags);
 info->blocked_open++;
 while (1) {
  local_irq_save(flags);
  if (tty->termios->c_cflag & CBAUD)
          rtsdtr_ctrl(SER_DTR|SER_RTS);
  local_irq_restore(flags);
  set_current_state(TASK_INTERRUPTIBLE);
  if (tty_hung_up_p(filp) ||
      !(info->flags & ASYNC_INITIALIZED)) {






   retval = -EAGAIN;

   break;
  }
  if (!(info->flags & ASYNC_CLOSING) &&
      (do_clocal || (!(ciab.pra & SER_DCD)) ))
   break;
  if (signal_pending(current)) {
   retval = -ERESTARTSYS;
   break;
  }




  schedule();
 }
 __set_current_state(TASK_RUNNING);
 remove_wait_queue(&info->open_wait, &wait);
 if (extra_count)
  state->count++;
 info->blocked_open--;




 if (retval)
  return retval;
 info->flags |= ASYNC_NORMAL_ACTIVE;
 return 0;
}
