
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct dca_provider {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* remove_requester ) (struct dca_provider*,struct device*) ;} ;


 int EFAULT ;
 int ENODEV ;
 struct dca_provider* dca_find_provider_by_dev (struct device*) ;
 int dca_lock ;
 int dca_sysfs_remove_req (struct dca_provider*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct dca_provider*,struct device*) ;

int dca_remove_requester(struct device *dev)
{
 struct dca_provider *dca;
 int slot;
 unsigned long flags;

 if (!dev)
  return -EFAULT;

 spin_lock_irqsave(&dca_lock, flags);
 dca = dca_find_provider_by_dev(dev);
 if (!dca) {
  spin_unlock_irqrestore(&dca_lock, flags);
  return -ENODEV;
 }
 slot = dca->ops->remove_requester(dca, dev);
 spin_unlock_irqrestore(&dca_lock, flags);

 if (slot < 0)
  return slot;

 dca_sysfs_remove_req(dca, slot);

 return 0;
}
