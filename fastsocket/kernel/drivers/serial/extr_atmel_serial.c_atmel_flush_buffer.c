
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct TYPE_2__ {scalar_t__ ofs; } ;
struct atmel_uart_port {TYPE_1__ pdc_tx; } ;


 int UART_PUT_TCR (struct uart_port*,int ) ;
 scalar_t__ atmel_use_dma_tx (struct uart_port*) ;
 struct atmel_uart_port* to_atmel_uart_port (struct uart_port*) ;

__attribute__((used)) static void atmel_flush_buffer(struct uart_port *port)
{
 struct atmel_uart_port *atmel_port = to_atmel_uart_port(port);

 if (atmel_use_dma_tx(port)) {
  UART_PUT_TCR(port, 0);
  atmel_port->pdc_tx.ofs = 0;
 }
}
