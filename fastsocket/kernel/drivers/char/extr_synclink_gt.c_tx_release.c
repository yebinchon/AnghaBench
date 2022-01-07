
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int name; struct slgt_info* driver_data; } ;
struct slgt_info {int lock; scalar_t__ tx_count; int tx_buf; int tx_active; int device_name; } ;


 int DBGINFO (char*) ;
 scalar_t__ sanity_check (struct slgt_info*,int ,char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tx_load (struct slgt_info*,int ,scalar_t__) ;
 int tx_start (struct slgt_info*) ;

__attribute__((used)) static void tx_release(struct tty_struct *tty)
{
 struct slgt_info *info = tty->driver_data;
 unsigned long flags;

 if (sanity_check(info, tty->name, "tx_release"))
  return;
 DBGINFO(("%s tx_release\n", info->device_name));
 spin_lock_irqsave(&info->lock,flags);
 if (!info->tx_active && info->tx_count) {
  tx_load(info, info->tx_buf, info->tx_count);
   tx_start(info);
 }
 spin_unlock_irqrestore(&info->lock,flags);
}
