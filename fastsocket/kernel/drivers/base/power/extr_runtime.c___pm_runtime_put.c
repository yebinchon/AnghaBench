
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int usage_count; } ;
struct device {TYPE_1__ power; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int pm_request_idle (struct device*) ;
 int pm_runtime_idle (struct device*) ;

int __pm_runtime_put(struct device *dev, bool sync)
{
 int retval = 0;

 if (atomic_dec_and_test(&dev->power.usage_count))
  retval = sync ? pm_runtime_idle(dev) : pm_request_idle(dev);

 return retval;
}
