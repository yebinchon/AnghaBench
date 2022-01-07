
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int tx; } ;
struct uart_port {int dev; TYPE_2__ icount; TYPE_1__* state; } ;
struct circ_buf {int tail; int head; } ;
struct atmel_dma_buffer {int ofs; scalar_t__ dma_addr; int dma_size; } ;
struct atmel_uart_port {struct atmel_dma_buffer pdc_tx; } ;
struct TYPE_3__ {struct circ_buf xmit; } ;


 int ATMEL_PDC_TXTDIS ;
 int ATMEL_PDC_TXTEN ;
 int ATMEL_US_ENDTX ;
 int ATMEL_US_TXBUFE ;
 int CIRC_CNT_TO_END (int ,int,int) ;
 int DMA_TO_DEVICE ;
 scalar_t__ UART_GET_TCR (struct uart_port*) ;
 int UART_PUT_IER (struct uart_port*,int) ;
 int UART_PUT_PTCR (struct uart_port*,int ) ;
 int UART_PUT_TCR (struct uart_port*,int) ;
 int UART_PUT_TPR (struct uart_port*,scalar_t__) ;
 int UART_XMIT_SIZE ;
 scalar_t__ WAKEUP_CHARS ;
 int dma_sync_single_for_device (int ,scalar_t__,int ,int ) ;
 struct atmel_uart_port* to_atmel_uart_port (struct uart_port*) ;
 scalar_t__ uart_circ_chars_pending (struct circ_buf*) ;
 int uart_circ_empty (struct circ_buf*) ;
 int uart_tx_stopped (struct uart_port*) ;
 int uart_write_wakeup (struct uart_port*) ;

__attribute__((used)) static void atmel_tx_dma(struct uart_port *port)
{
 struct atmel_uart_port *atmel_port = to_atmel_uart_port(port);
 struct circ_buf *xmit = &port->state->xmit;
 struct atmel_dma_buffer *pdc = &atmel_port->pdc_tx;
 int count;


 if (UART_GET_TCR(port))
  return;

 xmit->tail += pdc->ofs;
 xmit->tail &= UART_XMIT_SIZE - 1;

 port->icount.tx += pdc->ofs;
 pdc->ofs = 0;




 UART_PUT_PTCR(port, ATMEL_PDC_TXTDIS);

 if (!uart_circ_empty(xmit) && !uart_tx_stopped(port)) {
  dma_sync_single_for_device(port->dev,
        pdc->dma_addr,
        pdc->dma_size,
        DMA_TO_DEVICE);

  count = CIRC_CNT_TO_END(xmit->head, xmit->tail, UART_XMIT_SIZE);
  pdc->ofs = count;

  UART_PUT_TPR(port, pdc->dma_addr + xmit->tail);
  UART_PUT_TCR(port, count);

  UART_PUT_PTCR(port, ATMEL_PDC_TXTEN);
  UART_PUT_IER(port, ATMEL_US_ENDTX | ATMEL_US_TXBUFE);
 }

 if (uart_circ_chars_pending(xmit) < WAKEUP_CHARS)
  uart_write_wakeup(port);
}
