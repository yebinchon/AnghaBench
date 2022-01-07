
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {unsigned int rx; } ;
struct uart_port {int lock; TYPE_3__ icount; int dev; TYPE_2__* state; } ;
struct tty_struct {int dummy; } ;
struct atmel_uart_port {int pdc_rx_idx; struct atmel_dma_buffer* pdc_rx; } ;
struct atmel_dma_buffer {unsigned int dma_size; unsigned int dma_addr; unsigned int ofs; scalar_t__ buf; } ;
struct TYPE_4__ {struct tty_struct* tty; } ;
struct TYPE_5__ {TYPE_1__ port; } ;


 int ATMEL_US_ENDRX ;
 int ATMEL_US_STTTO ;
 int ATMEL_US_TIMEOUT ;
 int DMA_FROM_DEVICE ;
 unsigned int UART_GET_RPR (struct uart_port*) ;
 int UART_PUT_CR (struct uart_port*,int ) ;
 int UART_PUT_IER (struct uart_port*,int) ;
 int UART_PUT_RNCR (struct uart_port*,unsigned int) ;
 int UART_PUT_RNPR (struct uart_port*,unsigned int) ;
 int dma_sync_single_for_cpu (int ,unsigned int,unsigned int,int ) ;
 int dma_sync_single_for_device (int ,unsigned int,unsigned int,int ) ;
 scalar_t__ likely (int) ;
 unsigned int min (unsigned int,unsigned int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct atmel_uart_port* to_atmel_uart_port (struct uart_port*) ;
 int tty_flip_buffer_push (struct tty_struct*) ;
 int tty_insert_flip_string (struct tty_struct*,scalar_t__,unsigned int) ;

__attribute__((used)) static void atmel_rx_from_dma(struct uart_port *port)
{
 struct atmel_uart_port *atmel_port = to_atmel_uart_port(port);
 struct tty_struct *tty = port->state->port.tty;
 struct atmel_dma_buffer *pdc;
 int rx_idx = atmel_port->pdc_rx_idx;
 unsigned int head;
 unsigned int tail;
 unsigned int count;

 do {

  UART_PUT_CR(port, ATMEL_US_STTTO);

  pdc = &atmel_port->pdc_rx[rx_idx];
  head = UART_GET_RPR(port) - pdc->dma_addr;
  tail = pdc->ofs;
  head = min(head, pdc->dma_size);

  if (likely(head != tail)) {
   dma_sync_single_for_cpu(port->dev, pdc->dma_addr,
     pdc->dma_size, DMA_FROM_DEVICE);







   count = head - tail;

   tty_insert_flip_string(tty, pdc->buf + pdc->ofs, count);

   dma_sync_single_for_device(port->dev, pdc->dma_addr,
     pdc->dma_size, DMA_FROM_DEVICE);

   port->icount.rx += count;
   pdc->ofs = head;
  }





  if (head >= pdc->dma_size) {
   pdc->ofs = 0;
   UART_PUT_RNPR(port, pdc->dma_addr);
   UART_PUT_RNCR(port, pdc->dma_size);

   rx_idx = !rx_idx;
   atmel_port->pdc_rx_idx = rx_idx;
  }
 } while (head >= pdc->dma_size);





 spin_unlock(&port->lock);
 tty_flip_buffer_push(tty);
 spin_lock(&port->lock);

 UART_PUT_IER(port, ATMEL_US_ENDRX | ATMEL_US_TIMEOUT);
}
