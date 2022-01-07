
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vio_dev {int dummy; } ;
struct hvcs_struct {char* p_location_code; int lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct hvcs_struct* from_vio_dev (struct vio_dev*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sprintf (char*,char*,char*) ;
 struct vio_dev* to_vio_dev (struct device*) ;

__attribute__((used)) static ssize_t hvcs_partner_clcs_show(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct vio_dev *viod = to_vio_dev(dev);
 struct hvcs_struct *hvcsd = from_vio_dev(viod);
 unsigned long flags;
 int retval;

 spin_lock_irqsave(&hvcsd->lock, flags);
 retval = sprintf(buf, "%s\n", &hvcsd->p_location_code[0]);
 spin_unlock_irqrestore(&hvcsd->lock, flags);
 return retval;
}
