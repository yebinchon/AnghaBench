
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int flags; TYPE_1__* termios; } ;
struct file {int f_flags; } ;
struct e100_serial {int flags; int count; int line; int blocked_open; int open_wait; int close_wait; } ;
struct TYPE_2__ {int c_cflag; } ;


 int ASYNC_CLOSING ;
 int ASYNC_HUP_NOTIFY ;
 int ASYNC_INITIALIZED ;
 int ASYNC_NORMAL_ACTIVE ;
 int CLOCAL ;
 int DECLARE_WAITQUEUE (int ,int ) ;
 int EAGAIN ;
 int ERESTARTSYS ;
 int O_NONBLOCK ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int TTY_IO_ERROR ;
 int add_wait_queue (int *,int *) ;
 int current ;
 int e100_dtr (struct e100_serial*,int) ;
 int e100_rts (struct e100_serial*,int) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int printk (char*,int ,int ) ;
 int remove_wait_queue (int *,int *) ;
 int schedule () ;
 int set_current_state (int ) ;
 scalar_t__ signal_pending (int ) ;
 scalar_t__ tty_hung_up_p (struct file*) ;
 int wait ;
 int wait_event_interruptible (int ,int) ;

__attribute__((used)) static int
block_til_ready(struct tty_struct *tty, struct file * filp,
  struct e100_serial *info)
{
 DECLARE_WAITQUEUE(wait, current);
 unsigned long flags;
 int retval;
 int do_clocal = 0, extra_count = 0;





 if (tty_hung_up_p(filp) ||
     (info->flags & ASYNC_CLOSING)) {
  wait_event_interruptible(info->close_wait,
   !(info->flags & ASYNC_CLOSING));






  return -EAGAIN;

 }





 if ((filp->f_flags & O_NONBLOCK) ||
     (tty->flags & (1 << TTY_IO_ERROR))) {
  info->flags |= ASYNC_NORMAL_ACTIVE;
  return 0;
 }

 if (tty->termios->c_cflag & CLOCAL) {
   do_clocal = 1;
 }
 retval = 0;
 add_wait_queue(&info->open_wait, &wait);




 local_irq_save(flags);
 if (!tty_hung_up_p(filp)) {
  extra_count++;
  info->count--;
 }
 local_irq_restore(flags);
 info->blocked_open++;
 while (1) {
  local_irq_save(flags);

  e100_rts(info, 1);
  e100_dtr(info, 1);
  local_irq_restore(flags);
  set_current_state(TASK_INTERRUPTIBLE);
  if (tty_hung_up_p(filp) ||
      !(info->flags & ASYNC_INITIALIZED)) {






   retval = -EAGAIN;

   break;
  }
  if (!(info->flags & ASYNC_CLOSING) && do_clocal)

   break;
  if (signal_pending(current)) {
   retval = -ERESTARTSYS;
   break;
  }




  schedule();
 }
 set_current_state(TASK_RUNNING);
 remove_wait_queue(&info->open_wait, &wait);
 if (extra_count)
  info->count++;
 info->blocked_open--;




 if (retval)
  return retval;
 info->flags |= ASYNC_NORMAL_ACTIVE;
 return 0;
}
