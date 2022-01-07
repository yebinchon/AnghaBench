
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int dummy; } ;
struct TYPE_2__ {int flags; struct tty_struct* tty; } ;
struct esp_struct {int read_status_mask; int ignore_status_mask; int stat_flags; TYPE_1__ port; scalar_t__ io_port; } ;
struct esp_pio_buffer {int* data; } ;


 int ASYNC_SAK ;
 int ESP_STAT_RX_TIMEOUT ;
 int TTY_BREAK ;
 int TTY_FRAME ;
 int TTY_PARITY ;
 scalar_t__ UART_ESI_RWS ;
 scalar_t__ UART_ESI_RX ;
 int do_SAK (struct tty_struct*) ;
 struct esp_pio_buffer* get_pio_buffer () ;
 unsigned short inw (scalar_t__) ;
 int release_pio_buffer (struct esp_pio_buffer*) ;
 int serial_in (struct esp_struct*,scalar_t__) ;
 int tty_insert_flip_char (struct tty_struct*,int,int) ;
 int tty_schedule_flip (struct tty_struct*) ;

__attribute__((used)) static inline void receive_chars_pio(struct esp_struct *info, int num_bytes)
{
 struct tty_struct *tty = info->port.tty;
 int i;
 struct esp_pio_buffer *pio_buf;
 struct esp_pio_buffer *err_buf;
 unsigned char status_mask;

 pio_buf = get_pio_buffer();

 if (!pio_buf)
  return;

 err_buf = get_pio_buffer();

 if (!err_buf) {
  release_pio_buffer(pio_buf);
  return;
 }

 status_mask = (info->read_status_mask >> 2) & 0x07;

 for (i = 0; i < num_bytes - 1; i += 2) {
  *((unsigned short *)(pio_buf->data + i)) =
   inw(info->io_port + UART_ESI_RX);
  err_buf->data[i] = serial_in(info, UART_ESI_RWS);
  err_buf->data[i + 1] = (err_buf->data[i] >> 3) & status_mask;
  err_buf->data[i] &= status_mask;
 }

 if (num_bytes & 0x0001) {
  pio_buf->data[num_bytes - 1] = serial_in(info, UART_ESI_RX);
  err_buf->data[num_bytes - 1] =
   (serial_in(info, UART_ESI_RWS) >> 3) & status_mask;
 }


 tty = info->port.tty;

 if (!tty) {
  release_pio_buffer(pio_buf);
  release_pio_buffer(err_buf);
  info->stat_flags &= ~ESP_STAT_RX_TIMEOUT;
  return;
 }

 status_mask = (info->ignore_status_mask >> 2) & 0x07;

 for (i = 0; i < num_bytes; i++) {
  if (!(err_buf->data[i] & status_mask)) {
   int flag = 0;

   if (err_buf->data[i] & 0x04) {
    flag = TTY_BREAK;
    if (info->port.flags & ASYNC_SAK)
     do_SAK(tty);
   } else if (err_buf->data[i] & 0x02)
    flag = TTY_FRAME;
   else if (err_buf->data[i] & 0x01)
    flag = TTY_PARITY;
   tty_insert_flip_char(tty, pio_buf->data[i], flag);
  }
 }

 tty_schedule_flip(tty);

 info->stat_flags &= ~ESP_STAT_RX_TIMEOUT;
 release_pio_buffer(pio_buf);
 release_pio_buffer(err_buf);
}
