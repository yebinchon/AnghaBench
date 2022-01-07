
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int pio_threshold; } ;
struct TYPE_4__ {TYPE_3__* tty; } ;
struct esp_struct {int stat_flags; int IER; scalar_t__ xmit_cnt; int lock; int last_active; TYPE_2__ config; TYPE_1__ port; int break_wait; } ;
typedef int irqreturn_t ;
struct TYPE_6__ {scalar_t__ stopped; } ;


 int ESI_GET_ERR_STAT ;
 int ESI_GET_RX_AVAIL ;
 int ESI_GET_TX_AVAIL ;
 int ESI_NO_COMMAND ;
 int ESI_SET_SRV_MASK ;
 int ESP_STAT_DMA_RX ;
 int ESP_STAT_DMA_TX ;
 int ESP_STAT_RX_TIMEOUT ;
 int ESP_STAT_USE_PIO ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int UART_ESI_CMD1 ;
 int UART_ESI_CMD2 ;
 int UART_ESI_SID ;
 int UART_ESI_STAT1 ;
 int UART_ESI_STAT2 ;
 int UART_IER_RDI ;
 int UART_IER_THRI ;
 int check_modem_status (struct esp_struct*) ;
 scalar_t__ dma_bytes ;
 int jiffies ;
 int printk (char*,...) ;
 int receive_chars_dma (struct esp_struct*,int) ;
 int receive_chars_dma_done (struct esp_struct*,unsigned int) ;
 int receive_chars_pio (struct esp_struct*,int) ;
 int serial_in (struct esp_struct*,int ) ;
 int serial_out (struct esp_struct*,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int transmit_chars_dma (struct esp_struct*,int) ;
 int transmit_chars_dma_done (struct esp_struct*) ;
 int transmit_chars_pio (struct esp_struct*,int) ;
 int tty_buffer_request_room (TYPE_3__*,int) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static irqreturn_t rs_interrupt_single(int irq, void *dev_id)
{
 struct esp_struct *info;
 unsigned err_status;
 unsigned int scratch;




 info = (struct esp_struct *)dev_id;
 err_status = 0;
 scratch = serial_in(info, UART_ESI_SID);

 spin_lock(&info->lock);

 if (!info->port.tty) {
  spin_unlock(&info->lock);
  return IRQ_NONE;
 }

 if (scratch & 0x04) {
  serial_out(info, UART_ESI_CMD1, ESI_GET_ERR_STAT);
  err_status = serial_in(info, UART_ESI_STAT1);
  serial_in(info, UART_ESI_STAT2);

  if (err_status & 0x01)
   info->stat_flags |= ESP_STAT_RX_TIMEOUT;

  if (err_status & 0x20)
   check_modem_status(info);

  if (err_status & 0x80)
   wake_up_interruptible(&info->break_wait);
 }

 if ((scratch & 0x88) ||
     (err_status & 0x1c) ) {
  if (info->stat_flags & ESP_STAT_DMA_RX)
   receive_chars_dma_done(info, err_status);
  else if (info->stat_flags & ESP_STAT_DMA_TX)
   transmit_chars_dma_done(info);
 }

 if (!(info->stat_flags & (ESP_STAT_DMA_RX | ESP_STAT_DMA_TX)) &&
     ((scratch & 0x01) || (info->stat_flags & ESP_STAT_RX_TIMEOUT)) &&
     (info->IER & UART_IER_RDI)) {
  int num_bytes;

  serial_out(info, UART_ESI_CMD1, ESI_NO_COMMAND);
  serial_out(info, UART_ESI_CMD1, ESI_GET_RX_AVAIL);
  num_bytes = serial_in(info, UART_ESI_STAT1) << 8;
  num_bytes |= serial_in(info, UART_ESI_STAT2);

  num_bytes = tty_buffer_request_room(info->port.tty, num_bytes);

  if (num_bytes) {
   if (dma_bytes ||
       (info->stat_flags & ESP_STAT_USE_PIO) ||
       (num_bytes <= info->config.pio_threshold))
    receive_chars_pio(info, num_bytes);
   else
    receive_chars_dma(info, num_bytes);
  }
 }

 if (!(info->stat_flags & (ESP_STAT_DMA_RX | ESP_STAT_DMA_TX)) &&
     (scratch & 0x02) && (info->IER & UART_IER_THRI)) {
  if ((info->xmit_cnt <= 0) || info->port.tty->stopped) {
   info->IER &= ~UART_IER_THRI;
   serial_out(info, UART_ESI_CMD1, ESI_SET_SRV_MASK);
   serial_out(info, UART_ESI_CMD2, info->IER);
  } else {
   int num_bytes;

   serial_out(info, UART_ESI_CMD1, ESI_NO_COMMAND);
   serial_out(info, UART_ESI_CMD1, ESI_GET_TX_AVAIL);
   num_bytes = serial_in(info, UART_ESI_STAT1) << 8;
   num_bytes |= serial_in(info, UART_ESI_STAT2);

   if (num_bytes > info->xmit_cnt)
    num_bytes = info->xmit_cnt;

   if (num_bytes) {
    if (dma_bytes ||
        (info->stat_flags & ESP_STAT_USE_PIO) ||
        (num_bytes <= info->config.pio_threshold))
     transmit_chars_pio(info, num_bytes);
    else
     transmit_chars_dma(info, num_bytes);
   }
  }
 }

 info->last_active = jiffies;




 spin_unlock(&info->lock);
 return IRQ_HANDLED;
}
