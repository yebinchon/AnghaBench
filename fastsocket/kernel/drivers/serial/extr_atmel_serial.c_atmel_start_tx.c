
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 int ATMEL_PDC_TXTEN ;
 int ATMEL_US_ENDTX ;
 int ATMEL_US_TXBUFE ;
 int ATMEL_US_TXRDY ;
 int UART_GET_PTSR (struct uart_port*) ;
 int UART_PUT_IER (struct uart_port*,int) ;
 int UART_PUT_PTCR (struct uart_port*,int) ;
 scalar_t__ atmel_use_dma_tx (struct uart_port*) ;

__attribute__((used)) static void atmel_start_tx(struct uart_port *port)
{
 if (atmel_use_dma_tx(port)) {
  if (UART_GET_PTSR(port) & ATMEL_PDC_TXTEN)


   return;

  UART_PUT_IER(port, ATMEL_US_ENDTX | ATMEL_US_TXBUFE);

  UART_PUT_PTCR(port, ATMEL_PDC_TXTEN);
 } else
  UART_PUT_IER(port, ATMEL_US_TXRDY);
}
