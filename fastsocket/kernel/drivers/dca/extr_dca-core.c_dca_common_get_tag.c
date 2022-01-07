
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct device {int dummy; } ;
struct dca_provider {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* get_tag ) (struct dca_provider*,struct device*,int) ;} ;


 int ENODEV ;
 struct dca_provider* dca_find_provider_by_dev (struct device*) ;
 int dca_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct dca_provider*,struct device*,int) ;

u8 dca_common_get_tag(struct device *dev, int cpu)
{
 struct dca_provider *dca;
 u8 tag;
 unsigned long flags;

 spin_lock_irqsave(&dca_lock, flags);

 dca = dca_find_provider_by_dev(dev);
 if (!dca) {
  spin_unlock_irqrestore(&dca_lock, flags);
  return -ENODEV;
 }
 tag = dca->ops->get_tag(dca, dev, cpu);

 spin_unlock_irqrestore(&dca_lock, flags);
 return tag;
}
