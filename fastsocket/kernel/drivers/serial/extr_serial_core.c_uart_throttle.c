
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_state {int uart_port; } ;
struct tty_struct {TYPE_1__* termios; struct uart_state* driver_data; } ;
struct TYPE_2__ {int c_cflag; } ;


 int CDTRDSR ;
 int CRTSCTS ;
 scalar_t__ I_IXOFF (struct tty_struct*) ;
 int STOP_CHAR (struct tty_struct*) ;
 int TIOCM_DTR ;
 int TIOCM_RTS ;
 int uart_clear_mctrl (int ,int ) ;
 int uart_send_xchar (struct tty_struct*,int ) ;

__attribute__((used)) static void uart_throttle(struct tty_struct *tty)
{
 struct uart_state *state = tty->driver_data;

 if (I_IXOFF(tty))
  uart_send_xchar(tty, STOP_CHAR(tty));

 if (tty->termios->c_cflag & CRTSCTS)
  uart_clear_mctrl(state->uart_port, TIOCM_RTS);
 if (tty->termios->c_cflag & CDTRDSR)
  uart_clear_mctrl(state->uart_port, TIOCM_DTR);
}
