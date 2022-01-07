
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct tty_struct {int flags; TYPE_1__* termios; } ;
struct m68k_serial {int flags; int blocked_open; int count; int open_wait; int close_wait; } ;
struct file {int f_flags; } ;
struct TYPE_6__ {int state; } ;
struct TYPE_5__ {int c_cflag; } ;


 int CLOCAL ;
 int DECLARE_WAITQUEUE (int ,TYPE_2__*) ;
 int EAGAIN ;
 int ERESTARTSYS ;
 int O_NONBLOCK ;
 int S_CLOSING ;
 int S_HUP_NOTIFY ;
 int S_INITIALIZED ;
 int S_NORMAL_ACTIVE ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int TTY_IO_ERROR ;
 int add_wait_queue (int *,int *) ;
 TYPE_2__* current ;
 int interruptible_sleep_on (int *) ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int m68k_rtsdtr (struct m68k_serial*,int) ;
 int remove_wait_queue (int *,int *) ;
 int schedule () ;
 scalar_t__ signal_pending (TYPE_2__*) ;
 scalar_t__ tty_hung_up_p (struct file*) ;
 int wait ;

__attribute__((used)) static int block_til_ready(struct tty_struct *tty, struct file * filp,
      struct m68k_serial *info)
{
 DECLARE_WAITQUEUE(wait, current);
 int retval;
 int do_clocal = 0;





 if (info->flags & S_CLOSING) {
  interruptible_sleep_on(&info->close_wait);






  return -EAGAIN;

 }





 if ((filp->f_flags & O_NONBLOCK) ||
     (tty->flags & (1 << TTY_IO_ERROR))) {
  info->flags |= S_NORMAL_ACTIVE;
  return 0;
 }

 if (tty->termios->c_cflag & CLOCAL)
  do_clocal = 1;
 retval = 0;
 add_wait_queue(&info->open_wait, &wait);

 info->count--;
 info->blocked_open++;
 while (1) {
  local_irq_disable();
  m68k_rtsdtr(info, 1);
  local_irq_enable();
  current->state = TASK_INTERRUPTIBLE;
  if (tty_hung_up_p(filp) ||
      !(info->flags & S_INITIALIZED)) {






   retval = -EAGAIN;

   break;
  }
  if (!(info->flags & S_CLOSING) && do_clocal)
   break;
                if (signal_pending(current)) {
   retval = -ERESTARTSYS;
   break;
  }
  schedule();
 }
 current->state = TASK_RUNNING;
 remove_wait_queue(&info->open_wait, &wait);
 if (!tty_hung_up_p(filp))
  info->count++;
 info->blocked_open--;

 if (retval)
  return retval;
 info->flags |= S_NORMAL_ACTIVE;
 return 0;
}
