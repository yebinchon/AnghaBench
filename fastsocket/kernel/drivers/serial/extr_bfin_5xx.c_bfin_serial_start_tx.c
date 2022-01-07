
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct tty_struct {TYPE_1__* termios; } ;
struct TYPE_9__ {TYPE_3__* state; } ;
struct bfin_serial_port {scalar_t__ tx_done; scalar_t__ scts; TYPE_4__ port; } ;
struct TYPE_7__ {struct tty_struct* tty; } ;
struct TYPE_8__ {TYPE_2__ port; } ;
struct TYPE_6__ {scalar_t__ c_line; } ;


 int ETBEI ;
 scalar_t__ N_IRDA ;
 int TIOCM_CTS ;
 int UART_SET_IER (struct bfin_serial_port*,int ) ;
 int bfin_serial_dma_tx_chars (struct bfin_serial_port*) ;
 int bfin_serial_get_mctrl (TYPE_4__*) ;
 int bfin_serial_reset_irda (struct uart_port*) ;
 int bfin_serial_tx_chars (struct bfin_serial_port*) ;
 int uart_handle_cts_change (TYPE_4__*,scalar_t__) ;

__attribute__((used)) static void bfin_serial_start_tx(struct uart_port *port)
{
 struct bfin_serial_port *uart = (struct bfin_serial_port *)port;
 struct tty_struct *tty = uart->port.state->port.tty;
 if (tty->termios->c_line == N_IRDA)
  bfin_serial_reset_irda(port);





 UART_SET_IER(uart, ETBEI);
 bfin_serial_tx_chars(uart);

}
