
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
typedef int lunid ;
struct TYPE_4__ {int parent; } ;
struct TYPE_5__ {int LunID; int heads; TYPE_1__ dev; } ;
typedef TYPE_2__ drive_info_struct ;


 int EBUSY ;
 int ENOTTY ;
 int memcpy (unsigned char*,int ,int) ;
 int snprintf (char*,int,char*,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 TYPE_2__* to_drv (struct device*) ;
 struct ctlr_info* to_hba (int ) ;

__attribute__((used)) static ssize_t cciss_show_lunid(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 drive_info_struct *drv = to_drv(dev);
 struct ctlr_info *h = to_hba(drv->dev.parent);
 unsigned long flags;
 unsigned char lunid[8];

 spin_lock_irqsave(&h->lock, flags);
 if (h->busy_configuring) {
  spin_unlock_irqrestore(&h->lock, flags);
  return -EBUSY;
 }
 if (!drv->heads) {
  spin_unlock_irqrestore(&h->lock, flags);
  return -ENOTTY;
 }
 memcpy(lunid, drv->LunID, sizeof(lunid));
 spin_unlock_irqrestore(&h->lock, flags);
 return snprintf(buf, 20, "0x%02x%02x%02x%02x%02x%02x%02x%02x\n",
  lunid[0], lunid[1], lunid[2], lunid[3],
  lunid[4], lunid[5], lunid[6], lunid[7]);
}
