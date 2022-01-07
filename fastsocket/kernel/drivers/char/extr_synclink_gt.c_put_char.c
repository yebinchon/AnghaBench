
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int name; struct slgt_info* driver_data; } ;
struct slgt_info {unsigned char* tx_buf; scalar_t__ tx_count; scalar_t__ max_frame_size; int lock; int tx_active; int device_name; } ;


 int DBGINFO (char*) ;
 scalar_t__ sanity_check (struct slgt_info*,int ,char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int put_char(struct tty_struct *tty, unsigned char ch)
{
 struct slgt_info *info = tty->driver_data;
 unsigned long flags;
 int ret = 0;

 if (sanity_check(info, tty->name, "put_char"))
  return 0;
 DBGINFO(("%s put_char(%d)\n", info->device_name, ch));
 if (!info->tx_buf)
  return 0;
 spin_lock_irqsave(&info->lock,flags);
 if (!info->tx_active && (info->tx_count < info->max_frame_size)) {
  info->tx_buf[info->tx_count++] = ch;
  ret = 1;
 }
 spin_unlock_irqrestore(&info->lock,flags);
 return ret;
}
