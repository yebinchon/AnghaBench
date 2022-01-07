
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hwblk_id; } ;
struct platform_device {TYPE_1__ archdata; } ;
struct device {int dummy; } ;


 int dev_dbg (struct device*,char*,int) ;
 int might_sleep () ;
 int pm_runtime_suspend (struct device*) ;
 struct platform_device* to_platform_device (struct device*) ;

int platform_pm_runtime_idle(struct device *dev)
{
 struct platform_device *pdev = to_platform_device(dev);
 int hwblk = pdev->archdata.hwblk_id;
 int ret = 0;

 dev_dbg(dev, "platform_pm_runtime_idle() [%d]\n", hwblk);


 if (!hwblk)
  goto out;


 might_sleep();


 ret = pm_runtime_suspend(dev);
out:
 dev_dbg(dev, "platform_pm_runtime_idle() [%d] done!\n", hwblk);
 return ret;
}
