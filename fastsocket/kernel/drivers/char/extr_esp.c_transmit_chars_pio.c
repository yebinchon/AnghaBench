
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ tty; } ;
struct esp_struct {int xmit_cnt; int xmit_tail; int IER; TYPE_1__ port; scalar_t__ io_port; int * xmit_buf; } ;
struct esp_pio_buffer {int * data; } ;


 int ESI_GET_TX_AVAIL ;
 int ESI_NO_COMMAND ;
 int ESI_SET_SRV_MASK ;
 int ESP_XMIT_SIZE ;
 scalar_t__ UART_ESI_CMD1 ;
 scalar_t__ UART_ESI_CMD2 ;
 int UART_ESI_STAT1 ;
 int UART_ESI_STAT2 ;
 scalar_t__ UART_ESI_TX ;
 int UART_IER_THRI ;
 int WAKEUP_CHARS ;
 struct esp_pio_buffer* get_pio_buffer () ;
 int memcpy (int *,int *,int) ;
 int outw (unsigned short,scalar_t__) ;
 int printk (char*) ;
 int release_pio_buffer (struct esp_pio_buffer*) ;
 int serial_in (struct esp_struct*,int ) ;
 int serial_out (struct esp_struct*,scalar_t__,int ) ;
 int tty_wakeup (scalar_t__) ;

__attribute__((used)) static inline void transmit_chars_pio(struct esp_struct *info,
     int space_avail)
{
 int i;
 struct esp_pio_buffer *pio_buf;

 pio_buf = get_pio_buffer();

 if (!pio_buf)
  return;

 while (space_avail && info->xmit_cnt) {
  if (info->xmit_tail + space_avail <= ESP_XMIT_SIZE) {
   memcpy(pio_buf->data,
          &(info->xmit_buf[info->xmit_tail]),
          space_avail);
  } else {
   i = ESP_XMIT_SIZE - info->xmit_tail;
   memcpy(pio_buf->data,
          &(info->xmit_buf[info->xmit_tail]), i);
   memcpy(&(pio_buf->data[i]), info->xmit_buf,
          space_avail - i);
  }

  info->xmit_cnt -= space_avail;
  info->xmit_tail = (info->xmit_tail + space_avail) &
   (ESP_XMIT_SIZE - 1);

  for (i = 0; i < space_avail - 1; i += 2) {
   outw(*((unsigned short *)(pio_buf->data + i)),
        info->io_port + UART_ESI_TX);
  }

  if (space_avail & 0x0001)
   serial_out(info, UART_ESI_TX,
       pio_buf->data[space_avail - 1]);

  if (info->xmit_cnt) {
   serial_out(info, UART_ESI_CMD1, ESI_NO_COMMAND);
   serial_out(info, UART_ESI_CMD1, ESI_GET_TX_AVAIL);
   space_avail = serial_in(info, UART_ESI_STAT1) << 8;
   space_avail |= serial_in(info, UART_ESI_STAT2);

   if (space_avail > info->xmit_cnt)
    space_avail = info->xmit_cnt;
  }
 }

 if (info->xmit_cnt < WAKEUP_CHARS) {
  if (info->port.tty)
   tty_wakeup(info->port.tty);





  if (info->xmit_cnt <= 0) {
   info->IER &= ~UART_IER_THRI;
   serial_out(info, UART_ESI_CMD1,
       ESI_SET_SRV_MASK);
   serial_out(info, UART_ESI_CMD2, info->IER);
  }
 }

 release_pio_buffer(pio_buf);
}
