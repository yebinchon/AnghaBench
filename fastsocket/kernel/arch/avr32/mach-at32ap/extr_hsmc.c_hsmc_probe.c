
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct resource {scalar_t__ start; scalar_t__ end; } ;
struct platform_device {int dev; } ;
struct hsmc {int dummy; } ;
struct clk {int dummy; } ;
struct TYPE_5__ {int regs; struct clk* mck; struct clk* pclk; } ;


 int EBUSY ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (struct clk*) ;
 int PTR_ERR (struct clk*) ;
 int clk_disable (struct clk*) ;
 int clk_enable (struct clk*) ;
 struct clk* clk_get (int *,char*) ;
 int clk_put (struct clk*) ;
 int dev_info (int *,char*,unsigned long) ;
 TYPE_1__* hsmc ;
 int ioremap (scalar_t__,scalar_t__) ;
 int kfree (TYPE_1__*) ;
 TYPE_1__* kzalloc (int,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,TYPE_1__*) ;

__attribute__((used)) static int hsmc_probe(struct platform_device *pdev)
{
 struct resource *regs;
 struct clk *pclk, *mck;
 int ret;

 if (hsmc)
  return -EBUSY;

 regs = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!regs)
  return -ENXIO;
 pclk = clk_get(&pdev->dev, "pclk");
 if (IS_ERR(pclk))
  return PTR_ERR(pclk);
 mck = clk_get(&pdev->dev, "mck");
 if (IS_ERR(mck)) {
  ret = PTR_ERR(mck);
  goto out_put_pclk;
 }

 ret = -ENOMEM;
 hsmc = kzalloc(sizeof(struct hsmc), GFP_KERNEL);
 if (!hsmc)
  goto out_put_clocks;

 clk_enable(pclk);
 clk_enable(mck);

 hsmc->pclk = pclk;
 hsmc->mck = mck;
 hsmc->regs = ioremap(regs->start, regs->end - regs->start + 1);
 if (!hsmc->regs)
  goto out_disable_clocks;

 dev_info(&pdev->dev, "Atmel Static Memory Controller at 0x%08lx\n",
   (unsigned long)regs->start);

 platform_set_drvdata(pdev, hsmc);

 return 0;

out_disable_clocks:
 clk_disable(mck);
 clk_disable(pclk);
 kfree(hsmc);
out_put_clocks:
 clk_put(mck);
out_put_pclk:
 clk_put(pclk);
 hsmc = ((void*)0);
 return ret;
}
