
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tty_struct {int flags; TYPE_2__* driver; TYPE_1__* termios; } ;
struct tty_port {int flags; int blocked_open; int count; int open_wait; } ;
struct slgt_info {int lock; struct tty_port port; } ;
struct file {int f_flags; } ;
struct TYPE_4__ {int name; } ;
struct TYPE_3__ {int c_cflag; } ;


 int ASYNC_CLOSING ;
 int ASYNC_HUP_NOTIFY ;
 int ASYNC_INITIALIZED ;
 int ASYNC_NORMAL_ACTIVE ;
 int CBAUD ;
 int CLOCAL ;
 int DBGINFO (char*) ;
 int DECLARE_WAITQUEUE (int ,int ) ;
 int EAGAIN ;
 int ERESTARTSYS ;
 int O_NONBLOCK ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int TTY_IO_ERROR ;
 int add_wait_queue (int *,int *) ;
 int current ;
 int remove_wait_queue (int *,int *) ;
 int schedule () ;
 int set_current_state (int ) ;
 scalar_t__ signal_pending (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ tty_hung_up_p (struct file*) ;
 int tty_port_carrier_raised (struct tty_port*) ;
 int tty_port_raise_dtr_rts (struct tty_port*) ;
 int wait ;

__attribute__((used)) static int block_til_ready(struct tty_struct *tty, struct file *filp,
      struct slgt_info *info)
{
 DECLARE_WAITQUEUE(wait, current);
 int retval;
 bool do_clocal = 0;
 bool extra_count = 0;
 unsigned long flags;
 int cd;
 struct tty_port *port = &info->port;

 DBGINFO(("%s block_til_ready\n", tty->driver->name));

 if (filp->f_flags & O_NONBLOCK || tty->flags & (1 << TTY_IO_ERROR)){

  port->flags |= ASYNC_NORMAL_ACTIVE;
  return 0;
 }

 if (tty->termios->c_cflag & CLOCAL)
  do_clocal = 1;
 retval = 0;
 add_wait_queue(&port->open_wait, &wait);

 spin_lock_irqsave(&info->lock, flags);
 if (!tty_hung_up_p(filp)) {
  extra_count = 1;
  port->count--;
 }
 spin_unlock_irqrestore(&info->lock, flags);
 port->blocked_open++;

 while (1) {
  if ((tty->termios->c_cflag & CBAUD))
   tty_port_raise_dtr_rts(port);

  set_current_state(TASK_INTERRUPTIBLE);

  if (tty_hung_up_p(filp) || !(port->flags & ASYNC_INITIALIZED)){
   retval = (port->flags & ASYNC_HUP_NOTIFY) ?
     -EAGAIN : -ERESTARTSYS;
   break;
  }

  cd = tty_port_carrier_raised(port);

   if (!(port->flags & ASYNC_CLOSING) && (do_clocal || cd ))
    break;

  if (signal_pending(current)) {
   retval = -ERESTARTSYS;
   break;
  }

  DBGINFO(("%s block_til_ready wait\n", tty->driver->name));
  schedule();
 }

 set_current_state(TASK_RUNNING);
 remove_wait_queue(&port->open_wait, &wait);

 if (extra_count)
  port->count++;
 port->blocked_open--;

 if (!retval)
  port->flags |= ASYNC_NORMAL_ACTIVE;

 DBGINFO(("%s block_til_ready ready, rc=%d\n", tty->driver->name, retval));
 return retval;
}
