
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {scalar_t__ hw_stopped; scalar_t__ stopped; int name; struct slgt_info* driver_data; } ;
struct slgt_info {scalar_t__ tx_count; int lock; int tx_buf; int tx_active; int device_name; } ;


 int DBGINFO (char*) ;
 scalar_t__ sanity_check (struct slgt_info*,int ,char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tx_load (struct slgt_info*,int ,scalar_t__) ;
 int tx_start (struct slgt_info*) ;

__attribute__((used)) static void flush_chars(struct tty_struct *tty)
{
 struct slgt_info *info = tty->driver_data;
 unsigned long flags;

 if (sanity_check(info, tty->name, "flush_chars"))
  return;
 DBGINFO(("%s flush_chars entry tx_count=%d\n", info->device_name, info->tx_count));

 if (info->tx_count <= 0 || tty->stopped ||
     tty->hw_stopped || !info->tx_buf)
  return;

 DBGINFO(("%s flush_chars start transmit\n", info->device_name));

 spin_lock_irqsave(&info->lock,flags);
 if (!info->tx_active && info->tx_count) {
  tx_load(info, info->tx_buf,info->tx_count);
   tx_start(info);
 }
 spin_unlock_irqrestore(&info->lock,flags);
}
