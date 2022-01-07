
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {TYPE_1__* termios; struct sdio_uart_port* driver_data; } ;
struct sdio_uart_port {int func; int x_char; } ;
struct TYPE_2__ {int c_cflag; } ;


 int CRTSCTS ;
 scalar_t__ I_IXOFF (struct tty_struct*) ;
 int STOP_CHAR (struct tty_struct*) ;
 int TIOCM_RTS ;
 scalar_t__ sdio_uart_claim_func (struct sdio_uart_port*) ;
 int sdio_uart_clear_mctrl (struct sdio_uart_port*,int ) ;
 int sdio_uart_irq (int ) ;
 int sdio_uart_release_func (struct sdio_uart_port*) ;
 int sdio_uart_start_tx (struct sdio_uart_port*) ;

__attribute__((used)) static void sdio_uart_throttle(struct tty_struct *tty)
{
 struct sdio_uart_port *port = tty->driver_data;

 if (!I_IXOFF(tty) && !(tty->termios->c_cflag & CRTSCTS))
  return;

 if (sdio_uart_claim_func(port) != 0)
  return;

 if (I_IXOFF(tty)) {
  port->x_char = STOP_CHAR(tty);
  sdio_uart_start_tx(port);
 }

 if (tty->termios->c_cflag & CRTSCTS)
  sdio_uart_clear_mctrl(port, TIOCM_RTS);

 sdio_uart_irq(port->func);
 sdio_uart_release_func(port);
}
