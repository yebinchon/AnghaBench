
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {struct tty_struct* tty; } ;
struct uart_state {struct uart_port* uart_port; TYPE_2__ port; } ;
struct uart_port {TYPE_3__* cons; } ;
struct tty_struct {int flags; TYPE_1__* termios; } ;
struct TYPE_6__ {int cflag; } ;
struct TYPE_4__ {int c_cflag; } ;


 int CBAUD ;
 int TIOCM_DTR ;
 int TIOCM_RTS ;
 int TTY_IO_ERROR ;
 int uart_change_speed (struct uart_state*,int *) ;
 scalar_t__ uart_console (struct uart_port*) ;
 int uart_set_mctrl (struct uart_port*,int) ;

__attribute__((used)) static void uart_update_termios(struct uart_state *state)
{
 struct tty_struct *tty = state->port.tty;
 struct uart_port *port = state->uart_port;

 if (uart_console(port) && port->cons->cflag) {
  tty->termios->c_cflag = port->cons->cflag;
  port->cons->cflag = 0;
 }






 if (!(tty->flags & (1 << TTY_IO_ERROR))) {



  uart_change_speed(state, ((void*)0));




  if (tty->termios->c_cflag & CBAUD)
   uart_set_mctrl(port, TIOCM_DTR | TIOCM_RTS);
 }
}
