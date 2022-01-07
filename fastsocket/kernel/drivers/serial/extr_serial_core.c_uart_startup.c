
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {unsigned char* buf; } ;
struct tty_port {int flags; TYPE_3__* tty; } ;
struct uart_state {TYPE_4__ xmit; struct tty_port port; struct uart_port* uart_port; } ;
struct uart_port {scalar_t__ type; int lock; TYPE_2__* ops; } ;
struct TYPE_7__ {int flags; int hw_stopped; TYPE_1__* termios; } ;
struct TYPE_6__ {int (* startup ) (struct uart_port*) ;int (* get_mctrl ) (struct uart_port*) ;} ;
struct TYPE_5__ {int c_cflag; } ;


 int ASYNCB_INITIALIZED ;
 int ASYNC_CTS_FLOW ;
 int ASYNC_DSR_FLOW ;
 int ASYNC_INITIALIZED ;
 int CAP_SYS_ADMIN ;
 int CBAUD ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ PORT_UNKNOWN ;
 int TIOCM_CTS ;
 int TIOCM_DSR ;
 int TIOCM_DTR ;
 int TIOCM_RTS ;
 int TTY_IO_ERROR ;
 scalar_t__ capable (int ) ;
 int clear_bit (int ,int*) ;
 unsigned long get_zeroed_page (int ) ;
 int set_bit (int ,int*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 (struct uart_port*) ;
 int stub2 (struct uart_port*) ;
 int stub3 (struct uart_port*) ;
 int uart_change_speed (struct uart_state*,int *) ;
 int uart_circ_clear (TYPE_4__*) ;
 int uart_set_mctrl (struct uart_port*,int) ;

__attribute__((used)) static int uart_startup(struct uart_state *state, int init_hw)
{
 struct uart_port *uport = state->uart_port;
 struct tty_port *port = &state->port;
 unsigned long page;
 int retval = 0;

 if (port->flags & ASYNC_INITIALIZED)
  return 0;






 set_bit(TTY_IO_ERROR, &port->tty->flags);

 if (uport->type == PORT_UNKNOWN)
  return 0;





 if (!state->xmit.buf) {

  page = get_zeroed_page(GFP_KERNEL);
  if (!page)
   return -ENOMEM;

  state->xmit.buf = (unsigned char *) page;
  uart_circ_clear(&state->xmit);
 }

 retval = uport->ops->startup(uport);
 if (retval == 0) {
  if (init_hw) {



   uart_change_speed(state, ((void*)0));





   if (port->tty->termios->c_cflag & CBAUD)
    uart_set_mctrl(uport, TIOCM_RTS | TIOCM_DTR);
  }

  if (port->flags & ASYNC_CTS_FLOW) {
   spin_lock_irq(&uport->lock);
   if (!(uport->ops->get_mctrl(uport) & TIOCM_CTS))
    port->tty->hw_stopped = 1;
   spin_unlock_irq(&uport->lock);
  }

  if (port->flags & ASYNC_DSR_FLOW) {
   spin_lock_irq(&uport->lock);
   if (!(uport->ops->get_mctrl(uport) & TIOCM_DSR))
    port->tty->hw_stopped = 1;
   spin_unlock_irq(&uport->lock);
  }

  set_bit(ASYNCB_INITIALIZED, &port->flags);

  clear_bit(TTY_IO_ERROR, &port->tty->flags);
 }

 if (retval && capable(CAP_SYS_ADMIN))
  retval = 0;

 return retval;
}
