
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int usage_count; } ;
struct device {TYPE_1__ power; } ;


 int atomic_add_return (int,int *) ;
 int pm_request_resume (struct device*) ;
 int pm_runtime_resume (struct device*) ;

int __pm_runtime_get(struct device *dev, bool sync)
{
 int retval = 1;

 if (atomic_add_return(1, &dev->power.usage_count) == 1)
  retval = sync ? pm_runtime_resume(dev) : pm_request_resume(dev);

 return retval;
}
