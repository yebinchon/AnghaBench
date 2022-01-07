
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int applesmc_device_init () ;
 int applesmc_pm_resume (struct device*) ;

__attribute__((used)) static int applesmc_pm_restore(struct device *dev)
{
 int ret = applesmc_device_init();
 if (ret)
  return ret;
 return applesmc_pm_resume(dev);
}
