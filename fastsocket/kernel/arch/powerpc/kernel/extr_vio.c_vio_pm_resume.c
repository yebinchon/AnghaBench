
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {TYPE_1__* driver; } ;
struct dev_pm_ops {int (* resume ) (struct device*) ;} ;
struct TYPE_2__ {struct dev_pm_ops* pm; } ;


 int stub1 (struct device*) ;

__attribute__((used)) static int vio_pm_resume(struct device *dev)
{
 const struct dev_pm_ops *pm = dev->driver ? dev->driver->pm : ((void*)0);

 if (pm && pm->resume)
  return pm->resume(dev);
 return 0;
}
