
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct mxcmci_host {TYPE_2__* res; int clk; int dma; int base; int irq; TYPE_1__* pdata; } ;
struct mmc_host {int dummy; } ;
struct TYPE_5__ {int start; } ;
struct TYPE_4__ {int (* exit ) (int *,struct mmc_host*) ;} ;


 int clk_disable (int ) ;
 int clk_put (int ) ;
 int free_irq (int ,struct mxcmci_host*) ;
 int imx_dma_free (int ) ;
 int iounmap (int ) ;
 int mmc_free_host (struct mmc_host*) ;
 struct mxcmci_host* mmc_priv (struct mmc_host*) ;
 int mmc_remove_host (struct mmc_host*) ;
 struct mmc_host* platform_get_drvdata (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,int *) ;
 int release_mem_region (int ,int ) ;
 int release_resource (TYPE_2__*) ;
 int resource_size (TYPE_2__*) ;
 int stub1 (int *,struct mmc_host*) ;

__attribute__((used)) static int mxcmci_remove(struct platform_device *pdev)
{
 struct mmc_host *mmc = platform_get_drvdata(pdev);
 struct mxcmci_host *host = mmc_priv(mmc);

 platform_set_drvdata(pdev, ((void*)0));

 mmc_remove_host(mmc);

 if (host->pdata && host->pdata->exit)
  host->pdata->exit(&pdev->dev, mmc);

 free_irq(host->irq, host);
 iounmap(host->base);



 clk_disable(host->clk);
 clk_put(host->clk);

 release_mem_region(host->res->start, resource_size(host->res));
 release_resource(host->res);

 mmc_free_host(mmc);

 return 0;
}
