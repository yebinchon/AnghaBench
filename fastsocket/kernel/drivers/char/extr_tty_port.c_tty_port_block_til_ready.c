
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int flags; TYPE_1__* termios; } ;
struct tty_port {int flags; int lock; int blocked_open; int count; int open_wait; int close_wait; } ;
struct file {int f_flags; } ;
struct TYPE_2__ {int c_cflag; } ;


 int ASYNC_CLOSING ;
 int ASYNC_HUP_NOTIFY ;
 int ASYNC_INITIALIZED ;
 int ASYNC_NORMAL_ACTIVE ;
 int CBAUD ;
 scalar_t__ C_CLOCAL (struct tty_struct*) ;
 int DEFINE_WAIT (int ) ;
 int EAGAIN ;
 int ERESTARTSYS ;
 int O_NONBLOCK ;
 int TASK_INTERRUPTIBLE ;
 int TTY_IO_ERROR ;
 int current ;
 int finish_wait (int *,int *) ;
 int prepare_to_wait (int *,int *,int ) ;
 int schedule () ;
 scalar_t__ signal_pending (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ tty_hung_up_p (struct file*) ;
 int tty_port_carrier_raised (struct tty_port*) ;
 int tty_port_raise_dtr_rts (struct tty_port*) ;
 int wait ;
 int wait_event_interruptible (int ,int) ;

int tty_port_block_til_ready(struct tty_port *port,
    struct tty_struct *tty, struct file *filp)
{
 int do_clocal = 0, retval;
 unsigned long flags;
 DEFINE_WAIT(wait);
 int cd;


 if (tty_hung_up_p(filp) || port->flags & ASYNC_CLOSING) {
  wait_event_interruptible(port->close_wait,
    !(port->flags & ASYNC_CLOSING));
  if (port->flags & ASYNC_HUP_NOTIFY)
   return -EAGAIN;
  else
   return -ERESTARTSYS;
 }



 if (tty->flags & (1 << TTY_IO_ERROR)) {
  port->flags |= ASYNC_NORMAL_ACTIVE;
  return 0;
 }
 if (filp->f_flags & O_NONBLOCK) {

  if (tty->termios->c_cflag & CBAUD)
   tty_port_raise_dtr_rts(port);
  port->flags |= ASYNC_NORMAL_ACTIVE;
  return 0;
 }

 if (C_CLOCAL(tty))
  do_clocal = 1;





 retval = 0;


 spin_lock_irqsave(&port->lock, flags);
 if (!tty_hung_up_p(filp))
  port->count--;
 port->blocked_open++;
 spin_unlock_irqrestore(&port->lock, flags);

 while (1) {

  if (tty->termios->c_cflag & CBAUD)
   tty_port_raise_dtr_rts(port);

  prepare_to_wait(&port->open_wait, &wait, TASK_INTERRUPTIBLE);

  if (tty_hung_up_p(filp) || !(port->flags & ASYNC_INITIALIZED)) {
   if (port->flags & ASYNC_HUP_NOTIFY)
    retval = -EAGAIN;
   else
    retval = -ERESTARTSYS;
   break;
  }


  cd = tty_port_carrier_raised(port);
  if (!(port->flags & ASYNC_CLOSING) &&
    (do_clocal || cd))
   break;
  if (signal_pending(current)) {
   retval = -ERESTARTSYS;
   break;
  }
  schedule();
 }
 finish_wait(&port->open_wait, &wait);



 spin_lock_irqsave(&port->lock, flags);
 if (!tty_hung_up_p(filp))
  port->count++;
 port->blocked_open--;
 if (retval == 0)
  port->flags |= ASYNC_NORMAL_ACTIVE;
 spin_unlock_irqrestore(&port->lock, flags);
 return retval;

}
