
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int flags; } ;
struct TYPE_2__ {int flags; int blocked_open; int count; int open_wait; int close_wait; } ;
struct specialix_port {TYPE_1__ port; int lock; int MSVR; } ;
struct specialix_board {int lock; } ;
struct file {int f_flags; } ;


 int ASYNC_CLOSING ;
 int ASYNC_HUP_NOTIFY ;
 int ASYNC_INITIALIZED ;
 int ASYNC_NORMAL_ACTIVE ;
 int CD186x_CAR ;
 int CD186x_MSVR ;
 scalar_t__ C_CLOCAL (struct tty_struct*) ;
 int DECLARE_WAITQUEUE (int ,int ) ;
 int EAGAIN ;
 int ERESTARTSYS ;
 int MSVR_CD ;
 int MSVR_DTR ;
 int O_NONBLOCK ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int TTY_IO_ERROR ;
 int add_wait_queue (int *,int *) ;
 int current ;
 int func_enter () ;
 int func_exit () ;
 int interruptible_sleep_on (int *) ;
 struct specialix_board* port_Board (struct specialix_port*) ;
 int port_No (struct specialix_port*) ;
 int remove_wait_queue (int *,int *) ;
 int schedule () ;
 int set_current_state (int ) ;
 scalar_t__ signal_pending (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ sx_crtscts (struct tty_struct*) ;
 int sx_in (struct specialix_board*,int ) ;
 int sx_out (struct specialix_board*,int ,int ) ;
 scalar_t__ tty_hung_up_p (struct file*) ;
 int wait ;

__attribute__((used)) static int block_til_ready(struct tty_struct *tty, struct file *filp,
      struct specialix_port *port)
{
 DECLARE_WAITQUEUE(wait, current);
 struct specialix_board *bp = port_Board(port);
 int retval;
 int do_clocal = 0;
 int CD;
 unsigned long flags;

 func_enter();





 if (tty_hung_up_p(filp) || port->port.flags & ASYNC_CLOSING) {
  interruptible_sleep_on(&port->port.close_wait);
  if (port->port.flags & ASYNC_HUP_NOTIFY) {
   func_exit();
   return -EAGAIN;
  } else {
   func_exit();
   return -ERESTARTSYS;
  }
 }





 if ((filp->f_flags & O_NONBLOCK) ||
     (tty->flags & (1 << TTY_IO_ERROR))) {
  port->port.flags |= ASYNC_NORMAL_ACTIVE;
  func_exit();
  return 0;
 }

 if (C_CLOCAL(tty))
  do_clocal = 1;
 retval = 0;
 add_wait_queue(&port->port.open_wait, &wait);
 spin_lock_irqsave(&port->lock, flags);
 if (!tty_hung_up_p(filp))
  port->port.count--;
 spin_unlock_irqrestore(&port->lock, flags);
 port->port.blocked_open++;
 while (1) {
  spin_lock_irqsave(&bp->lock, flags);
  sx_out(bp, CD186x_CAR, port_No(port));
  CD = sx_in(bp, CD186x_MSVR) & MSVR_CD;
  if (sx_crtscts(tty)) {

   port->MSVR |= MSVR_DTR;
   sx_out(bp, CD186x_MSVR, port->MSVR);
  } else {

   port->MSVR |= MSVR_DTR;
   sx_out(bp, CD186x_MSVR, port->MSVR);
  }
  spin_unlock_irqrestore(&bp->lock, flags);
  set_current_state(TASK_INTERRUPTIBLE);
  if (tty_hung_up_p(filp) ||
      !(port->port.flags & ASYNC_INITIALIZED)) {
   if (port->port.flags & ASYNC_HUP_NOTIFY)
    retval = -EAGAIN;
   else
    retval = -ERESTARTSYS;
   break;
  }
  if (!(port->port.flags & ASYNC_CLOSING) &&
      (do_clocal || CD))
   break;
  if (signal_pending(current)) {
   retval = -ERESTARTSYS;
   break;
  }
  schedule();
 }

 set_current_state(TASK_RUNNING);
 remove_wait_queue(&port->port.open_wait, &wait);
 spin_lock_irqsave(&port->lock, flags);
 if (!tty_hung_up_p(filp))
  port->port.count++;
 port->port.blocked_open--;
 spin_unlock_irqrestore(&port->lock, flags);
 if (retval) {
  func_exit();
  return retval;
 }

 port->port.flags |= ASYNC_NORMAL_ACTIVE;
 func_exit();
 return 0;
}
