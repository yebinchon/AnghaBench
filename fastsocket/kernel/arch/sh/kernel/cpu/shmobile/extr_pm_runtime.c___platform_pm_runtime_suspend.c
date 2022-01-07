
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
struct TYPE_3__ {int (* runtime_suspend ) (struct device*) ;} ;


 int BUG_ON (int) ;
 int ENOSYS ;
 int HWBLK_CNT_IDLE ;
 int PDEV_ARCHDATA_FLAG_IDLE ;
 int PDEV_ARCHDATA_FLAG_SUSP ;
 int dev_dbg (struct device*,char*,int,...) ;
 int hwblk_cnt_dec (int ,int,int ) ;
 int hwblk_disable (int ,int) ;
 int hwblk_enable (int ,int) ;
 int hwblk_info ;
 int platform_pm_runtime_not_idle (struct platform_device*) ;
 int set_bit (int ,int *) ;
 int stub1 (struct device*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int __platform_pm_runtime_suspend(struct platform_device *pdev)
{
 struct device *d = &pdev->dev;
 struct pdev_archdata *ad = &pdev->archdata;
 int hwblk = ad->hwblk_id;
 int ret = -ENOSYS;

 dev_dbg(d, "__platform_pm_runtime_suspend() [%d]\n", hwblk);

 if (d->driver && d->driver->pm && d->driver->pm->runtime_suspend) {
  BUG_ON(!test_bit(PDEV_ARCHDATA_FLAG_IDLE, &ad->flags));

  hwblk_enable(hwblk_info, hwblk);
  ret = d->driver->pm->runtime_suspend(d);
  hwblk_disable(hwblk_info, hwblk);

  if (!ret) {
   set_bit(PDEV_ARCHDATA_FLAG_SUSP, &ad->flags);
   platform_pm_runtime_not_idle(pdev);
   hwblk_cnt_dec(hwblk_info, hwblk, HWBLK_CNT_IDLE);
  }
 }

 dev_dbg(d, "__platform_pm_runtime_suspend() [%d] - returns %d\n",
  hwblk, ret);

 return ret;
}
