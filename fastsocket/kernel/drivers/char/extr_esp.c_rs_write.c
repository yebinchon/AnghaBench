
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int stopped; int name; struct esp_struct* driver_data; } ;
struct esp_struct {int xmit_cnt; int xmit_head; int IER; int lock; scalar_t__ xmit_buf; } ;


 int ESI_SET_SRV_MASK ;
 int ESP_XMIT_SIZE ;
 int UART_ESI_CMD1 ;
 int UART_ESI_CMD2 ;
 int UART_IER_THRI ;
 int memcpy (scalar_t__,unsigned char const*,int) ;
 int serial_out (struct esp_struct*,int ,int) ;
 scalar_t__ serial_paranoia_check (struct esp_struct*,int ,char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int rs_write(struct tty_struct *tty,
      const unsigned char *buf, int count)
{
 int c, t, ret = 0;
 struct esp_struct *info = tty->driver_data;
 unsigned long flags;

 if (serial_paranoia_check(info, tty->name, "rs_write"))
  return 0;

 if (!info->xmit_buf)
  return 0;

 while (1) {



  c = count;
  t = ESP_XMIT_SIZE - info->xmit_cnt - 1;

  if (t < c)
   c = t;

  t = ESP_XMIT_SIZE - info->xmit_head;

  if (t < c)
   c = t;

  if (c <= 0)
   break;

  memcpy(info->xmit_buf + info->xmit_head, buf, c);

  info->xmit_head = (info->xmit_head + c) & (ESP_XMIT_SIZE-1);
  info->xmit_cnt += c;
  buf += c;
  count -= c;
  ret += c;
 }

 spin_lock_irqsave(&info->lock, flags);

 if (info->xmit_cnt && !tty->stopped && !(info->IER & UART_IER_THRI)) {
  info->IER |= UART_IER_THRI;
  serial_out(info, UART_ESI_CMD1, ESI_SET_SRV_MASK);
  serial_out(info, UART_ESI_CMD2, info->IER);
 }

 spin_unlock_irqrestore(&info->lock, flags);
 return ret;
}
