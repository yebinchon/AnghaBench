
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct push_switch_platform_info {scalar_t__ name; } ;
struct push_switch {int debounce; } ;
struct TYPE_2__ {struct push_switch_platform_info* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;


 int del_timer_sync (int *) ;
 int dev_attr_switch ;
 int device_remove_file (TYPE_1__*,int *) ;
 int flush_scheduled_work () ;
 int free_irq (int,struct platform_device*) ;
 int kfree (struct push_switch*) ;
 struct push_switch* platform_get_drvdata (struct platform_device*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,int *) ;

__attribute__((used)) static int switch_drv_remove(struct platform_device *pdev)
{
 struct push_switch *psw = platform_get_drvdata(pdev);
 struct push_switch_platform_info *psw_info = pdev->dev.platform_data;
 int irq = platform_get_irq(pdev, 0);

 if (psw_info->name)
  device_remove_file(&pdev->dev, &dev_attr_switch);

 platform_set_drvdata(pdev, ((void*)0));
 flush_scheduled_work();
 del_timer_sync(&psw->debounce);
 free_irq(irq, pdev);

 kfree(psw);

 return 0;
}
