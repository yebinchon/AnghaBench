
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int * buf; } ;
struct tty_port {int delta_msr_wait; int flags; struct tty_struct* tty; } ;
struct uart_state {TYPE_3__ xmit; int tlet; struct tty_port port; struct uart_port* uart_port; } ;
struct uart_port {int irq; TYPE_2__* ops; } ;
struct tty_struct {TYPE_1__* termios; int flags; } ;
struct TYPE_5__ {int (* shutdown ) (struct uart_port*) ;} ;
struct TYPE_4__ {int c_cflag; } ;


 int ASYNCB_INITIALIZED ;
 int HUPCL ;
 int TIOCM_DTR ;
 int TIOCM_RTS ;
 int TTY_IO_ERROR ;
 int free_page (unsigned long) ;
 int set_bit (int ,int *) ;
 int stub1 (struct uart_port*) ;
 int synchronize_irq (int ) ;
 int tasklet_kill (int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int uart_clear_mctrl (struct uart_port*,int) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void uart_shutdown(struct uart_state *state)
{
 struct uart_port *uport = state->uart_port;
 struct tty_port *port = &state->port;
 struct tty_struct *tty = port->tty;




 if (tty)
  set_bit(TTY_IO_ERROR, &tty->flags);

 if (test_and_clear_bit(ASYNCB_INITIALIZED, &port->flags)) {



  if (!tty || (tty->termios->c_cflag & HUPCL))
   uart_clear_mctrl(uport, TIOCM_DTR | TIOCM_RTS);
  wake_up_interruptible(&port->delta_msr_wait);




  uport->ops->shutdown(uport);




  synchronize_irq(uport->irq);
 }




 tasklet_kill(&state->tlet);




 if (state->xmit.buf) {
  free_page((unsigned long)state->xmit.buf);
  state->xmit.buf = ((void*)0);
 }
}
