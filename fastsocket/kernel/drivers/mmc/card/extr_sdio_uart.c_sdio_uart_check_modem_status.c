
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cts; int dcd; int dsr; int rng; } ;
struct sdio_uart_port {TYPE_3__* tty; TYPE_1__ icount; } ;
struct TYPE_6__ {int hw_stopped; TYPE_2__* termios; } ;
struct TYPE_5__ {int c_cflag; } ;


 int CRTSCTS ;
 int UART_MSR ;
 int UART_MSR_ANY_DELTA ;
 int UART_MSR_CTS ;
 int UART_MSR_DCTS ;
 int UART_MSR_DDCD ;
 int UART_MSR_DDSR ;
 int UART_MSR_TERI ;
 int sdio_in (struct sdio_uart_port*,int ) ;
 int sdio_uart_start_tx (struct sdio_uart_port*) ;
 int sdio_uart_stop_tx (struct sdio_uart_port*) ;
 int tty_wakeup (TYPE_3__*) ;

__attribute__((used)) static void sdio_uart_check_modem_status(struct sdio_uart_port *port)
{
 int status;

 status = sdio_in(port, UART_MSR);

 if ((status & UART_MSR_ANY_DELTA) == 0)
  return;

 if (status & UART_MSR_TERI)
  port->icount.rng++;
 if (status & UART_MSR_DDSR)
  port->icount.dsr++;
 if (status & UART_MSR_DDCD)
  port->icount.dcd++;
 if (status & UART_MSR_DCTS) {
  port->icount.cts++;
  if (port->tty->termios->c_cflag & CRTSCTS) {
   int cts = (status & UART_MSR_CTS);
   if (port->tty->hw_stopped) {
    if (cts) {
     port->tty->hw_stopped = 0;
     sdio_uart_start_tx(port);
     tty_wakeup(port->tty);
    }
   } else {
    if (!cts) {
     port->tty->hw_stopped = 1;
     sdio_uart_stop_tx(port);
    }
   }
  }
 }
}
