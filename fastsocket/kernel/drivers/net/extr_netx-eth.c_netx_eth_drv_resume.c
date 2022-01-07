
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int dev_err (int *,char*) ;

__attribute__((used)) static int netx_eth_drv_resume(struct platform_device *pdev)
{
 dev_err(&pdev->dev, "resume not implemented\n");
 return 0;
}
