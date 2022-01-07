
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_port {int flags; struct tty_struct* tty; } ;
struct uart_state {struct uart_port* uart_port; struct tty_port port; } ;
struct uart_port {scalar_t__ type; TYPE_1__* ops; } ;
struct tty_struct {struct ktermios* termios; } ;
struct ktermios {int c_cflag; } ;
struct TYPE_2__ {int (* set_termios ) (struct uart_port*,struct ktermios*,struct ktermios*) ;} ;


 int ASYNCB_CHECK_CD ;
 int ASYNCB_CTS_FLOW ;
 int ASYNCB_DSR_FLOW ;
 int CDTRDSR ;
 int CLOCAL ;
 int CRTSCTS ;
 scalar_t__ PORT_UNKNOWN ;
 int clear_bit (int ,int *) ;
 int set_bit (int ,int *) ;
 int stub1 (struct uart_port*,struct ktermios*,struct ktermios*) ;

__attribute__((used)) static void
uart_change_speed(struct uart_state *state, struct ktermios *old_termios)
{
 struct tty_port *port = &state->port;
 struct tty_struct *tty = port->tty;
 struct uart_port *uport = state->uart_port;
 struct ktermios *termios;





 if (!tty || !tty->termios || uport->type == PORT_UNKNOWN)
  return;

 termios = tty->termios;




 if (termios->c_cflag & CRTSCTS)
  set_bit(ASYNCB_CTS_FLOW, &port->flags);
 else
  clear_bit(ASYNCB_CTS_FLOW, &port->flags);

 if (termios->c_cflag & CDTRDSR)
  set_bit(ASYNCB_DSR_FLOW, &port->flags);
 else
  clear_bit(ASYNCB_DSR_FLOW, &port->flags);

 if (termios->c_cflag & CLOCAL)
  clear_bit(ASYNCB_CHECK_CD, &port->flags);
 else
  set_bit(ASYNCB_CHECK_CD, &port->flags);

 uport->ops->set_termios(uport, termios, old_termios);
}
