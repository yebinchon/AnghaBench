
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_4__ {int lock; } ;
typedef TYPE_1__ ide_hwif_t ;
struct TYPE_5__ {int dev_flags; scalar_t__ sleep; TYPE_1__* hwif; } ;
typedef TYPE_2__ ide_drive_t ;


 int EOPNOTSUPP ;
 int IDE_DFLAG_NO_UNLOAD ;
 int IDE_DFLAG_PARKED ;
 unsigned long jiffies ;
 unsigned int jiffies_to_msecs (scalar_t__) ;
 int snprintf (char*,int,char*,unsigned int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ time_after (scalar_t__,unsigned long) ;
 TYPE_2__* to_ide_device (struct device*) ;

ssize_t ide_park_show(struct device *dev, struct device_attribute *attr,
        char *buf)
{
 ide_drive_t *drive = to_ide_device(dev);
 ide_hwif_t *hwif = drive->hwif;
 unsigned long now;
 unsigned int msecs;

 if (drive->dev_flags & IDE_DFLAG_NO_UNLOAD)
  return -EOPNOTSUPP;

 spin_lock_irq(&hwif->lock);
 now = jiffies;
 if (drive->dev_flags & IDE_DFLAG_PARKED &&
     time_after(drive->sleep, now))
  msecs = jiffies_to_msecs(drive->sleep - now);
 else
  msecs = 0;
 spin_unlock_irq(&hwif->lock);

 return snprintf(buf, 20, "%u\n", msecs);
}
