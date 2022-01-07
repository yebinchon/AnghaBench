
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pdev_archdata {int hwblk_id; int flags; } ;
struct device {TYPE_2__* driver; } ;
struct platform_device {struct pdev_archdata archdata; struct device dev; } ;
struct TYPE_4__ {TYPE_1__* pm; } ;
struct TYPE_3__ {int (* runtime_resume ) (struct device*) ;} ;


 int ENOSYS ;
 int PDEV_ARCHDATA_FLAG_SUSP ;
 int clear_bit (int ,int *) ;
 int dev_dbg (struct device*,char*,int,...) ;
 int hwblk_disable (int ,int) ;
 int hwblk_enable (int ,int) ;
 int hwblk_info ;
 int stub1 (struct device*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int __platform_pm_runtime_resume(struct platform_device *pdev)
{
 struct device *d = &pdev->dev;
 struct pdev_archdata *ad = &pdev->archdata;
 int hwblk = ad->hwblk_id;
 int ret = -ENOSYS;

 dev_dbg(d, "__platform_pm_runtime_resume() [%d]\n", hwblk);

 if (d->driver && d->driver->pm && d->driver->pm->runtime_resume) {
  hwblk_enable(hwblk_info, hwblk);
  ret = 0;

  if (test_bit(PDEV_ARCHDATA_FLAG_SUSP, &ad->flags)) {
   ret = d->driver->pm->runtime_resume(d);
   if (!ret)
    clear_bit(PDEV_ARCHDATA_FLAG_SUSP, &ad->flags);
   else
    hwblk_disable(hwblk_info, hwblk);
  }
 }

 dev_dbg(d, "__platform_pm_runtime_resume() [%d] - returns %d\n",
  hwblk, ret);

 return ret;
}
