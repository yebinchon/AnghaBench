
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hwblk_id; int flags; int mutex; int entry; } ;
struct platform_device {TYPE_1__ archdata; } ;
struct notifier_block {int dummy; } ;
struct device {int dummy; } ;






 int HWBLK_CNT_DEVICES ;
 int INIT_LIST_HEAD (int *) ;
 int PDEV_ARCHDATA_FLAG_INIT ;
 int __set_bit (int ,int *) ;
 int hwblk_cnt_dec (int ,int,int ) ;
 int hwblk_cnt_inc (int ,int,int ) ;
 int hwblk_disable (int ,int) ;
 int hwblk_enable (int ,int) ;
 int hwblk_info ;
 int mutex_init (int *) ;
 struct platform_device* to_platform_device (struct device*) ;

__attribute__((used)) static int platform_bus_notify(struct notifier_block *nb,
          unsigned long action, void *data)
{
 struct device *dev = data;
 struct platform_device *pdev = to_platform_device(dev);
 int hwblk = pdev->archdata.hwblk_id;


 if (!hwblk)
  return 0;

 switch (action) {
 case 131:
  INIT_LIST_HEAD(&pdev->archdata.entry);
  mutex_init(&pdev->archdata.mutex);

  hwblk_enable(hwblk_info, hwblk);
  hwblk_disable(hwblk_info, hwblk);

  __set_bit(PDEV_ARCHDATA_FLAG_INIT, &pdev->archdata.flags);
  break;

 case 130:

  hwblk_cnt_inc(hwblk_info, hwblk, HWBLK_CNT_DEVICES);
  break;
 case 128:

  hwblk_cnt_dec(hwblk_info, hwblk, HWBLK_CNT_DEVICES);

  __set_bit(PDEV_ARCHDATA_FLAG_INIT, &pdev->archdata.flags);
  break;
 case 129:
  break;
 }
 return 0;
}
