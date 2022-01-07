
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct sdio_uart_port* driver_data; } ;
struct sdio_uart_port {int lcr; } ;


 int UART_LCR ;
 int UART_LCR_SBC ;
 int sdio_out (struct sdio_uart_port*,int ,int ) ;
 int sdio_uart_claim_func (struct sdio_uart_port*) ;
 int sdio_uart_release_func (struct sdio_uart_port*) ;

__attribute__((used)) static int sdio_uart_break_ctl(struct tty_struct *tty, int break_state)
{
 struct sdio_uart_port *port = tty->driver_data;
 int result;

 result = sdio_uart_claim_func(port);
 if (result != 0)
  return result;

 if (break_state == -1)
  port->lcr |= UART_LCR_SBC;
 else
  port->lcr &= ~UART_LCR_SBC;
 sdio_out(port, UART_LCR, port->lcr);

 sdio_uart_release_func(port);
 return 0;
}
