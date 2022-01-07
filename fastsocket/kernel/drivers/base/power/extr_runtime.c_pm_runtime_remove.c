
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ runtime_status; } ;
struct device {TYPE_1__ power; } ;


 scalar_t__ RPM_ACTIVE ;
 int __pm_runtime_disable (struct device*,int) ;
 int pm_runtime_set_suspended (struct device*) ;

void pm_runtime_remove(struct device *dev)
{
 __pm_runtime_disable(dev, 0);


 if (dev->power.runtime_status == RPM_ACTIVE)
  pm_runtime_set_suspended(dev);
}
