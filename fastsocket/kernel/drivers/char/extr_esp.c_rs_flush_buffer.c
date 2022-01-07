
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int name; struct esp_struct* driver_data; } ;
struct esp_struct {int lock; scalar_t__ xmit_tail; scalar_t__ xmit_head; scalar_t__ xmit_cnt; } ;


 scalar_t__ serial_paranoia_check (struct esp_struct*,int ,char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tty_wakeup (struct tty_struct*) ;

__attribute__((used)) static void rs_flush_buffer(struct tty_struct *tty)
{
 struct esp_struct *info = tty->driver_data;
 unsigned long flags;

 if (serial_paranoia_check(info, tty->name, "rs_flush_buffer"))
  return;
 spin_lock_irqsave(&info->lock, flags);
 info->xmit_cnt = info->xmit_head = info->xmit_tail = 0;
 spin_unlock_irqrestore(&info->lock, flags);
 tty_wakeup(tty);
}
