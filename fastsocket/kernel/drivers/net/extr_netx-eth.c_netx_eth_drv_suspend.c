
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
typedef int pm_message_t ;


 int dev_err (int *,char*) ;

__attribute__((used)) static int netx_eth_drv_suspend(struct platform_device *pdev, pm_message_t state)
{
 dev_err(&pdev->dev, "suspend not implemented\n");
 return 0;
}
