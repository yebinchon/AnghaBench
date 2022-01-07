
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct heartbeat_data {int base; int timer; } ;


 int del_timer_sync (int *) ;
 int iounmap (int ) ;
 int kfree (struct heartbeat_data*) ;
 struct heartbeat_data* platform_get_drvdata (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,int *) ;

__attribute__((used)) static int heartbeat_drv_remove(struct platform_device *pdev)
{
 struct heartbeat_data *hd = platform_get_drvdata(pdev);

 del_timer_sync(&hd->timer);
 iounmap(hd->base);

 platform_set_drvdata(pdev, ((void*)0));

 if (!pdev->dev.platform_data)
  kfree(hd);

 return 0;
}
