
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct nomadik_nand_platform_data* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct nomadik_nand_platform_data {int (* exit ) () ;} ;
struct nomadik_nand_host {int addr_va; int data_va; int cmd_va; } ;


 int iounmap (int ) ;
 int kfree (struct nomadik_nand_host*) ;
 struct nomadik_nand_host* platform_get_drvdata (struct platform_device*) ;
 int stub1 () ;

__attribute__((used)) static int nomadik_nand_remove(struct platform_device *pdev)
{
 struct nomadik_nand_host *host = platform_get_drvdata(pdev);
 struct nomadik_nand_platform_data *pdata = pdev->dev.platform_data;

 if (pdata->exit)
  pdata->exit();

 if (host) {
  iounmap(host->cmd_va);
  iounmap(host->data_va);
  iounmap(host->addr_va);
  kfree(host);
 }
 return 0;
}
