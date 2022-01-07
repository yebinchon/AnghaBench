
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pdev_archdata {int hwblk_id; int mutex; int flags; int entry; } ;
struct platform_device {struct pdev_archdata archdata; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int HWBLK_CNT_IDLE ;
 int PDEV_ARCHDATA_FLAG_IDLE ;
 int PDEV_ARCHDATA_FLAG_INIT ;
 int __set_bit (int ,int *) ;
 int dev_dbg (struct device*,char*,int,...) ;
 int hwblk_cnt_inc (int ,int,int ) ;
 int hwblk_disable (int ,int) ;
 int hwblk_idle_list ;
 int hwblk_info ;
 int hwblk_lock ;
 int list_add_tail (int *,int *) ;
 int might_sleep () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_bit (int ,int *) ;
 struct platform_device* to_platform_device (struct device*) ;

int platform_pm_runtime_suspend(struct device *dev)
{
 struct platform_device *pdev = to_platform_device(dev);
 struct pdev_archdata *ad = &pdev->archdata;
 unsigned long flags;
 int hwblk = ad->hwblk_id;
 int ret = 0;

 dev_dbg(dev, "platform_pm_runtime_suspend() [%d]\n", hwblk);


 if (!hwblk)
  goto out;


 might_sleep();


 if (test_bit(PDEV_ARCHDATA_FLAG_INIT, &pdev->archdata.flags)) {
  ret = -EINVAL;
  goto out;
 }


 mutex_lock(&ad->mutex);


 hwblk_disable(hwblk_info, hwblk);


 spin_lock_irqsave(&hwblk_lock, flags);
 list_add_tail(&pdev->archdata.entry, &hwblk_idle_list);
 __set_bit(PDEV_ARCHDATA_FLAG_IDLE, &pdev->archdata.flags);
 spin_unlock_irqrestore(&hwblk_lock, flags);


 hwblk_cnt_inc(hwblk_info, hwblk, HWBLK_CNT_IDLE);




 mutex_unlock(&ad->mutex);

out:
 dev_dbg(dev, "platform_pm_runtime_suspend() [%d] returns %d\n",
  hwblk, ret);

 return ret;
}
