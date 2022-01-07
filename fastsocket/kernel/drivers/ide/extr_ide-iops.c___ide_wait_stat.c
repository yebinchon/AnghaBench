
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u8 ;
struct ide_tp_ops {int (* read_status ) (TYPE_1__*) ;} ;
struct TYPE_8__ {struct ide_tp_ops* tp_ops; } ;
typedef TYPE_1__ ide_hwif_t ;
struct TYPE_9__ {TYPE_1__* hwif; } ;
typedef TYPE_2__ ide_drive_t ;


 int ATA_BUSY ;
 int EBUSY ;
 int EFAULT ;
 scalar_t__ OK_STAT (int,int,int) ;
 scalar_t__ jiffies ;
 int local_irq_enable_in_hardirq () ;
 int local_irq_restore (unsigned long) ;
 int local_save_flags (unsigned long) ;
 int stub1 (TYPE_1__*) ;
 int stub2 (TYPE_1__*) ;
 int stub3 (TYPE_1__*) ;
 int stub4 (TYPE_1__*) ;
 scalar_t__ time_after (scalar_t__,unsigned long) ;
 int udelay (int) ;

int __ide_wait_stat(ide_drive_t *drive, u8 good, u8 bad,
      unsigned long timeout, u8 *rstat)
{
 ide_hwif_t *hwif = drive->hwif;
 const struct ide_tp_ops *tp_ops = hwif->tp_ops;
 unsigned long flags;
 int i;
 u8 stat;

 udelay(1);
 stat = tp_ops->read_status(hwif);

 if (stat & ATA_BUSY) {
  local_save_flags(flags);
  local_irq_enable_in_hardirq();
  timeout += jiffies;
  while ((stat = tp_ops->read_status(hwif)) & ATA_BUSY) {
   if (time_after(jiffies, timeout)) {





    stat = tp_ops->read_status(hwif);
    if ((stat & ATA_BUSY) == 0)
     break;

    local_irq_restore(flags);
    *rstat = stat;
    return -EBUSY;
   }
  }
  local_irq_restore(flags);
 }







 for (i = 0; i < 10; i++) {
  udelay(1);
  stat = tp_ops->read_status(hwif);

  if (OK_STAT(stat, good, bad)) {
   *rstat = stat;
   return 0;
  }
 }
 *rstat = stat;
 return -EFAULT;
}
