
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int name; struct esp_struct* driver_data; } ;
struct esp_struct {int xmit_cnt; int lock; } ;


 int ESP_XMIT_SIZE ;
 scalar_t__ serial_paranoia_check (struct esp_struct*,int ,char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int rs_write_room(struct tty_struct *tty)
{
 struct esp_struct *info = tty->driver_data;
 int ret;
 unsigned long flags;

 if (serial_paranoia_check(info, tty->name, "rs_write_room"))
  return 0;

 spin_lock_irqsave(&info->lock, flags);

 ret = ESP_XMIT_SIZE - info->xmit_cnt - 1;
 if (ret < 0)
  ret = 0;
 spin_unlock_irqrestore(&info->lock, flags);
 return ret;
}
