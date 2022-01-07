
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
typedef int sn ;
struct TYPE_4__ {int parent; } ;
struct TYPE_5__ {int serial_no; TYPE_1__ dev; } ;
typedef TYPE_2__ drive_info_struct ;
typedef int __u8 ;


 int EBUSY ;
 int memcpy (int*,int ,int) ;
 int snprintf (char*,int,char*,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 TYPE_2__* to_drv (struct device*) ;
 struct ctlr_info* to_hba (int ) ;

__attribute__((used)) static ssize_t dev_show_unique_id(struct device *dev,
     struct device_attribute *attr,
     char *buf)
{
 drive_info_struct *drv = to_drv(dev);
 struct ctlr_info *h = to_hba(drv->dev.parent);
 __u8 sn[16];
 unsigned long flags;
 int ret = 0;

 spin_lock_irqsave(&h->lock, flags);
 if (h->busy_configuring)
  ret = -EBUSY;
 else
  memcpy(sn, drv->serial_no, sizeof(sn));
 spin_unlock_irqrestore(&h->lock, flags);

 if (ret)
  return ret;
 else
  return snprintf(buf, 16 * 2 + 2,
    "%02X%02X%02X%02X%02X%02X%02X%02X"
    "%02X%02X%02X%02X%02X%02X%02X%02X\n",
    sn[0], sn[1], sn[2], sn[3],
    sn[4], sn[5], sn[6], sn[7],
    sn[8], sn[9], sn[10], sn[11],
    sn[12], sn[13], sn[14], sn[15]);
}
