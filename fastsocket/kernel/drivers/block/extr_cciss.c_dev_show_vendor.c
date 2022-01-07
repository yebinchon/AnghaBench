
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vendor ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ctlr_info {int lock; scalar_t__ busy_configuring; } ;
typedef int ssize_t ;
struct TYPE_4__ {int parent; } ;
struct TYPE_5__ {char* vendor; TYPE_1__ dev; } ;
typedef TYPE_2__ drive_info_struct ;


 int EBUSY ;
 int VENDOR_LEN ;
 int memcpy (char*,char*,int) ;
 int snprintf (char*,int,char*,char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 TYPE_2__* to_drv (struct device*) ;
 struct ctlr_info* to_hba (int ) ;

__attribute__((used)) static ssize_t dev_show_vendor(struct device *dev,
          struct device_attribute *attr,
          char *buf)
{
 drive_info_struct *drv = to_drv(dev);
 struct ctlr_info *h = to_hba(drv->dev.parent);
 char vendor[VENDOR_LEN + 1];
 unsigned long flags;
 int ret = 0;

 spin_lock_irqsave(&h->lock, flags);
 if (h->busy_configuring)
  ret = -EBUSY;
 else
  memcpy(vendor, drv->vendor, VENDOR_LEN + 1);
 spin_unlock_irqrestore(&h->lock, flags);

 if (ret)
  return ret;
 else
  return snprintf(buf, sizeof(vendor) + 1, "%s\n", drv->vendor);
}
