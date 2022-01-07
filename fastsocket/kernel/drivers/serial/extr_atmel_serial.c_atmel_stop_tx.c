
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 int ATMEL_PDC_TXTDIS ;
 int ATMEL_US_ENDTX ;
 int ATMEL_US_TXBUFE ;
 int ATMEL_US_TXRDY ;
 int UART_PUT_IDR (struct uart_port*,int) ;
 int UART_PUT_PTCR (struct uart_port*,int ) ;
 scalar_t__ atmel_use_dma_tx (struct uart_port*) ;

__attribute__((used)) static void atmel_stop_tx(struct uart_port *port)
{
 if (atmel_use_dma_tx(port)) {

  UART_PUT_PTCR(port, ATMEL_PDC_TXTDIS);
  UART_PUT_IDR(port, ATMEL_US_ENDTX | ATMEL_US_TXBUFE);
 } else
  UART_PUT_IDR(port, ATMEL_US_TXRDY);
}
