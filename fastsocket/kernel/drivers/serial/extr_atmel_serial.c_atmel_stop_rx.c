
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 int ATMEL_PDC_RXTDIS ;
 int ATMEL_US_ENDRX ;
 int ATMEL_US_RXRDY ;
 int ATMEL_US_TIMEOUT ;
 int UART_PUT_IDR (struct uart_port*,int) ;
 int UART_PUT_PTCR (struct uart_port*,int ) ;
 scalar_t__ atmel_use_dma_rx (struct uart_port*) ;

__attribute__((used)) static void atmel_stop_rx(struct uart_port *port)
{
 if (atmel_use_dma_rx(port)) {

  UART_PUT_PTCR(port, ATMEL_PDC_RXTDIS);
  UART_PUT_IDR(port, ATMEL_US_ENDRX | ATMEL_US_TIMEOUT);
 } else
  UART_PUT_IDR(port, ATMEL_US_RXRDY);
}
