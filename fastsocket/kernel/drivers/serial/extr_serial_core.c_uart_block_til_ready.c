
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tty_port {int flags; TYPE_3__* tty; int blocked_open; int count; int open_wait; int mutex; } ;
struct uart_state {struct tty_port port; struct uart_port* uart_port; } ;
struct uart_port {int lock; TYPE_2__* ops; } ;
struct file {int f_flags; } ;
struct TYPE_6__ {int flags; TYPE_1__* termios; } ;
struct TYPE_5__ {unsigned int (* get_mctrl ) (struct uart_port*) ;int (* enable_ms ) (struct uart_port*) ;} ;
struct TYPE_4__ {int c_cflag; } ;


 int ASYNC_INITIALIZED ;
 int CBAUD ;
 int CDTRDSR ;
 int CLOCAL ;
 int DECLARE_WAITQUEUE (int ,int ) ;
 int EAGAIN ;
 int ERESTARTSYS ;
 int O_NONBLOCK ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 unsigned int TIOCM_CAR ;
 int TIOCM_DTR ;
 int TTY_IO_ERROR ;
 int add_wait_queue (int *,int *) ;
 int current ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int remove_wait_queue (int *,int *) ;
 int schedule () ;
 int set_current_state (int ) ;
 scalar_t__ signal_pending (int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 (struct uart_port*) ;
 unsigned int stub2 (struct uart_port*) ;
 scalar_t__ tty_hung_up_p (struct file*) ;
 int uart_set_mctrl (struct uart_port*,int ) ;
 int wait ;

__attribute__((used)) static int
uart_block_til_ready(struct file *filp, struct uart_state *state)
{
 DECLARE_WAITQUEUE(wait, current);
 struct uart_port *uport = state->uart_port;
 struct tty_port *port = &state->port;
 unsigned int mctrl;

 port->blocked_open++;
 port->count--;

 add_wait_queue(&port->open_wait, &wait);
 while (1) {
  set_current_state(TASK_INTERRUPTIBLE);




  if (tty_hung_up_p(filp) || port->tty == ((void*)0))
   break;




  if (!(port->flags & ASYNC_INITIALIZED))
   break;
  if ((filp->f_flags & O_NONBLOCK) ||
      (port->tty->termios->c_cflag & CLOCAL) ||
      (port->tty->flags & (1 << TTY_IO_ERROR)))
   break;






  if (port->tty->termios->c_cflag & CBAUD &&
      !(port->tty->termios->c_cflag & CDTRDSR))
   uart_set_mctrl(uport, TIOCM_DTR);





  spin_lock_irq(&uport->lock);
  uport->ops->enable_ms(uport);
  mctrl = uport->ops->get_mctrl(uport);
  spin_unlock_irq(&uport->lock);
  if (mctrl & TIOCM_CAR)
   break;

  mutex_unlock(&port->mutex);
  schedule();
  mutex_lock(&port->mutex);

  if (signal_pending(current))
   break;
 }
 set_current_state(TASK_RUNNING);
 remove_wait_queue(&port->open_wait, &wait);

 port->count++;
 port->blocked_open--;

 if (signal_pending(current))
  return -ERESTARTSYS;

 if (!port->tty || tty_hung_up_p(filp))
  return -EAGAIN;

 return 0;
}
