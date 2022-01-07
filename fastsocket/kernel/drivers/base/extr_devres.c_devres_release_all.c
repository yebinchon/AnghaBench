
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * next; } ;
struct device {TYPE_1__ devres_head; int devres_lock; } ;


 int ENODEV ;
 scalar_t__ WARN_ON (int ) ;
 int release_nodes (struct device*,int *,TYPE_1__*,unsigned long) ;
 int spin_lock_irqsave (int *,unsigned long) ;

int devres_release_all(struct device *dev)
{
 unsigned long flags;


 if (WARN_ON(dev->devres_head.next == ((void*)0)))
  return -ENODEV;
 spin_lock_irqsave(&dev->devres_lock, flags);
 return release_nodes(dev, dev->devres_head.next, &dev->devres_head,
        flags);
}
