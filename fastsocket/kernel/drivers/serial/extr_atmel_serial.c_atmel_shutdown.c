
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int irq; int dev; } ;
struct atmel_dma_buffer {int dma_size; int dma_addr; int buf; } ;
struct atmel_uart_port {struct atmel_dma_buffer pdc_tx; struct atmel_dma_buffer* pdc_rx; } ;


 int ATMEL_US_RSTSTA ;
 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int UART_PUT_CR (struct uart_port*,int ) ;
 int UART_PUT_IDR (struct uart_port*,int) ;
 int atmel_close_hook (struct uart_port*) ;
 int atmel_stop_rx (struct uart_port*) ;
 int atmel_stop_tx (struct uart_port*) ;
 scalar_t__ atmel_use_dma_rx (struct uart_port*) ;
 scalar_t__ atmel_use_dma_tx (struct uart_port*) ;
 int dma_unmap_single (int ,int ,int ,int ) ;
 int free_irq (int ,struct uart_port*) ;
 int kfree (int ) ;
 struct atmel_uart_port* to_atmel_uart_port (struct uart_port*) ;

__attribute__((used)) static void atmel_shutdown(struct uart_port *port)
{
 struct atmel_uart_port *atmel_port = to_atmel_uart_port(port);



 atmel_stop_rx(port);
 atmel_stop_tx(port);




 if (atmel_use_dma_rx(port)) {
  int i;

  for (i = 0; i < 2; i++) {
   struct atmel_dma_buffer *pdc = &atmel_port->pdc_rx[i];

   dma_unmap_single(port->dev,
      pdc->dma_addr,
      pdc->dma_size,
      DMA_FROM_DEVICE);
   kfree(pdc->buf);
  }
 }
 if (atmel_use_dma_tx(port)) {
  struct atmel_dma_buffer *pdc = &atmel_port->pdc_tx;

  dma_unmap_single(port->dev,
     pdc->dma_addr,
     pdc->dma_size,
     DMA_TO_DEVICE);
 }




 UART_PUT_CR(port, ATMEL_US_RSTSTA);
 UART_PUT_IDR(port, -1);




 free_irq(port->irq, port);





 if (atmel_close_hook)
  atmel_close_hook(port);
}
