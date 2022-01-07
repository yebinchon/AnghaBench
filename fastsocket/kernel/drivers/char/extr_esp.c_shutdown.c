
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int flags; TYPE_2__* tty; int delta_msr_wait; } ;
struct esp_struct {int stat_flags; int MCR; int lock; TYPE_3__ port; scalar_t__ IER; int * xmit_buf; struct esp_struct* next_port; int irq; int break_wait; int line; } ;
struct TYPE_5__ {int flags; TYPE_1__* termios; } ;
struct TYPE_4__ {int c_cflag; } ;


 int ASYNC_INITIALIZED ;
 int DMA_BUFFER_SZ ;
 int ESI_SET_SRV_MASK ;
 int ESI_WRITE_UART ;
 int ESP_STAT_DMA_RX ;
 int ESP_STAT_DMA_TX ;
 int HUPCL ;
 int TTY_IO_ERROR ;
 int UART_ESI_CMD1 ;
 int UART_ESI_CMD2 ;
 int UART_MCR ;
 int UART_MCR_DTR ;
 int UART_MCR_OUT2 ;
 int UART_MCR_RTS ;
 unsigned long claim_dma_lock () ;
 int clear_dma_ff (int ) ;
 int disable_dma (int ) ;
 int dma ;
 int * dma_buffer ;
 scalar_t__ dma_bytes ;
 int free_dma (int ) ;
 int free_irq (int ,struct esp_struct*) ;
 int free_page (unsigned long) ;
 int free_pages (unsigned long,int ) ;
 int get_order (int ) ;
 struct esp_struct* ports ;
 int printk (char*,int ,int ) ;
 int release_dma_lock (unsigned long) ;
 int serial_out (struct esp_struct*,int ,int) ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void shutdown(struct esp_struct *info)
{
 unsigned long flags, f;

 if (!(info->port.flags & ASYNC_INITIALIZED))
  return;






 spin_lock_irqsave(&info->lock, flags);




 wake_up_interruptible(&info->port.delta_msr_wait);
 wake_up_interruptible(&info->break_wait);



 if (info->stat_flags & (ESP_STAT_DMA_RX | ESP_STAT_DMA_TX)) {
  f = claim_dma_lock();
  disable_dma(dma);
  clear_dma_ff(dma);
  release_dma_lock(f);

  dma_bytes = 0;
 }




 free_irq(info->irq, info);

 if (dma_buffer) {
  struct esp_struct *current_port = ports;

  while (current_port) {
   if ((current_port != info) &&
       (current_port->port.flags & ASYNC_INITIALIZED))
    break;

   current_port = current_port->next_port;
  }

  if (!current_port) {
   free_dma(dma);
   free_pages((unsigned long)dma_buffer,
       get_order(DMA_BUFFER_SZ));
   dma_buffer = ((void*)0);
  }
 }

 if (info->xmit_buf) {
  free_page((unsigned long) info->xmit_buf);
  info->xmit_buf = ((void*)0);
 }

 info->IER = 0;
 serial_out(info, UART_ESI_CMD1, ESI_SET_SRV_MASK);
 serial_out(info, UART_ESI_CMD2, 0x00);

 if (!info->port.tty || (info->port.tty->termios->c_cflag & HUPCL))
  info->MCR &= ~(UART_MCR_DTR|UART_MCR_RTS);

 info->MCR &= ~UART_MCR_OUT2;
 serial_out(info, UART_ESI_CMD1, ESI_WRITE_UART);
 serial_out(info, UART_ESI_CMD2, UART_MCR);
 serial_out(info, UART_ESI_CMD2, info->MCR);

 if (info->port.tty)
  set_bit(TTY_IO_ERROR, &info->port.tty->flags);

 info->port.flags &= ~ASYNC_INITIALIZED;
 spin_unlock_irqrestore(&info->lock, flags);
}
