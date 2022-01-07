
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_state {struct uart_port* uart_port; } ;
struct uart_port {scalar_t__ x_char; } ;
struct tty_struct {TYPE_1__* termios; struct uart_state* driver_data; } ;
struct TYPE_2__ {int c_cflag; } ;


 int CDTRDSR ;
 int CRTSCTS ;
 scalar_t__ I_IXOFF (struct tty_struct*) ;
 int START_CHAR (struct tty_struct*) ;
 int TIOCM_DTR ;
 int TIOCM_RTS ;
 int uart_send_xchar (struct tty_struct*,int ) ;
 int uart_set_mctrl (struct uart_port*,int ) ;

__attribute__((used)) static void uart_unthrottle(struct tty_struct *tty)
{
 struct uart_state *state = tty->driver_data;
 struct uart_port *port = state->uart_port;

 if (I_IXOFF(tty)) {
  if (port->x_char)
   port->x_char = 0;
  else
   uart_send_xchar(tty, START_CHAR(tty));
 }

 if (tty->termios->c_cflag & CRTSCTS)
  uart_set_mctrl(port, TIOCM_RTS);
 if (tty->termios->c_cflag & CDTRDSR)
  uart_set_mctrl(port, TIOCM_DTR);
}
