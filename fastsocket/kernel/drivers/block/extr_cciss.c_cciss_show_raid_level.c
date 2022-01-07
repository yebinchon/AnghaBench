
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ctlr_info {int lock; scalar_t__ busy_configuring; } ;
typedef int ssize_t ;
struct TYPE_4__ {int parent; } ;
struct TYPE_5__ {int raid_level; TYPE_1__ dev; } ;
typedef TYPE_2__ drive_info_struct ;


 int EBUSY ;
 int RAID_UNKNOWN ;
 char** raid_label ;
 int snprintf (char*,scalar_t__,char*,char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ strlen (char*) ;
 TYPE_2__* to_drv (struct device*) ;
 struct ctlr_info* to_hba (int ) ;

__attribute__((used)) static ssize_t cciss_show_raid_level(struct device *dev,
         struct device_attribute *attr, char *buf)
{
 drive_info_struct *drv = to_drv(dev);
 struct ctlr_info *h = to_hba(drv->dev.parent);
 int raid;
 unsigned long flags;

 spin_lock_irqsave(&h->lock, flags);
 if (h->busy_configuring) {
  spin_unlock_irqrestore(&h->lock, flags);
  return -EBUSY;
 }
 raid = drv->raid_level;
 spin_unlock_irqrestore(&h->lock, flags);
 if (raid < 0 || raid > RAID_UNKNOWN)
  raid = RAID_UNKNOWN;

 return snprintf(buf, strlen(raid_label[raid]) + 7, "RAID %s\n",
   raid_label[raid]);
}
