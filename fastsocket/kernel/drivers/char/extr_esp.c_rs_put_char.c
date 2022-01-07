
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int name; struct esp_struct* driver_data; } ;
struct esp_struct {unsigned char* xmit_buf; int xmit_cnt; int xmit_head; int lock; } ;


 int ESP_XMIT_SIZE ;
 scalar_t__ serial_paranoia_check (struct esp_struct*,int ,char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int rs_put_char(struct tty_struct *tty, unsigned char ch)
{
 struct esp_struct *info = tty->driver_data;
 unsigned long flags;
 int ret = 0;

 if (serial_paranoia_check(info, tty->name, "rs_put_char"))
  return 0;

 if (!info->xmit_buf)
  return 0;

 spin_lock_irqsave(&info->lock, flags);
 if (info->xmit_cnt < ESP_XMIT_SIZE - 1) {
  info->xmit_buf[info->xmit_head++] = ch;
  info->xmit_head &= ESP_XMIT_SIZE-1;
  info->xmit_cnt++;
  ret = 1;
 }
 spin_unlock_irqrestore(&info->lock, flags);
 return ret;
}
