
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pdev_archdata {int hwblk_id; int mutex; int flags; } ;
struct platform_device {struct pdev_archdata archdata; } ;
struct device {int dummy; } ;


 int HWBLK_CNT_IDLE ;
 int PDEV_ARCHDATA_FLAG_INIT ;
 int PDEV_ARCHDATA_FLAG_SUSP ;
 int __platform_pm_runtime_resume (struct platform_device*) ;
 int clear_bit (int ,int *) ;
 int dev_dbg (struct device*,char*,int,...) ;
 int hwblk_cnt_dec (int ,int,int ) ;
 int hwblk_info ;
 int might_sleep () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int platform_pm_runtime_not_idle (struct platform_device*) ;
 int test_bit (int ,int *) ;
 struct platform_device* to_platform_device (struct device*) ;

int platform_pm_runtime_resume(struct device *dev)
{
 struct platform_device *pdev = to_platform_device(dev);
 struct pdev_archdata *ad = &pdev->archdata;
 int hwblk = ad->hwblk_id;
 int ret = 0;

 dev_dbg(dev, "platform_pm_runtime_resume() [%d]\n", hwblk);


 if (!hwblk)
  goto out;


 might_sleep();


 mutex_lock(&ad->mutex);


 platform_pm_runtime_not_idle(pdev);


 if (!test_bit(PDEV_ARCHDATA_FLAG_INIT, &pdev->archdata.flags) &&
     !test_bit(PDEV_ARCHDATA_FLAG_SUSP, &pdev->archdata.flags))
  hwblk_cnt_dec(hwblk_info, hwblk, HWBLK_CNT_IDLE);


 ret = __platform_pm_runtime_resume(pdev);


 clear_bit(PDEV_ARCHDATA_FLAG_INIT, &pdev->archdata.flags);





 mutex_unlock(&ad->mutex);
out:
 dev_dbg(dev, "platform_pm_runtime_resume() [%d] returns %d\n",
  hwblk, ret);

 return ret;
}
