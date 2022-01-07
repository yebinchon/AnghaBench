
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int irq; int flags; struct sh_tmu_priv* dev_id; int handler; int name; } ;
struct sh_tmu_priv {int * mapbase; int clk; struct platform_device* pdev; TYPE_1__ irqaction; } ;
struct sh_timer_config {int clocksource_rating; int clockevent_rating; int name; int clk; } ;
struct resource {int start; } ;
struct TYPE_5__ {struct sh_timer_config* platform_data; } ;
struct platform_device {TYPE_2__ dev; } ;


 int ENXIO ;
 int IORESOURCE_MEM ;
 int IRQF_DISABLED ;
 int IRQF_IRQPOLL ;
 int IRQF_TIMER ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int clk_get (TYPE_2__*,int ) ;
 int dev_err (TYPE_2__*,char*) ;
 int * ioremap_nocache (int ,int ) ;
 int iounmap (int *) ;
 int memset (struct sh_tmu_priv*,int ,int) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct sh_tmu_priv*) ;
 int pr_err (char*,...) ;
 int resource_size (struct resource*) ;
 int sh_tmu_interrupt ;
 int sh_tmu_register (struct sh_tmu_priv*,int ,int ,int ) ;

__attribute__((used)) static int sh_tmu_setup(struct sh_tmu_priv *p, struct platform_device *pdev)
{
 struct sh_timer_config *cfg = pdev->dev.platform_data;
 struct resource *res;
 int irq, ret;
 ret = -ENXIO;

 memset(p, 0, sizeof(*p));
 p->pdev = pdev;

 if (!cfg) {
  dev_err(&p->pdev->dev, "missing platform data\n");
  goto err0;
 }

 platform_set_drvdata(pdev, p);

 res = platform_get_resource(p->pdev, IORESOURCE_MEM, 0);
 if (!res) {
  dev_err(&p->pdev->dev, "failed to get I/O memory\n");
  goto err0;
 }

 irq = platform_get_irq(p->pdev, 0);
 if (irq < 0) {
  dev_err(&p->pdev->dev, "failed to get irq\n");
  goto err0;
 }


 p->mapbase = ioremap_nocache(res->start, resource_size(res));
 if (p->mapbase == ((void*)0)) {
  pr_err("sh_tmu: failed to remap I/O memory\n");
  goto err0;
 }


 p->irqaction.name = cfg->name;
 p->irqaction.handler = sh_tmu_interrupt;
 p->irqaction.dev_id = p;
 p->irqaction.irq = irq;
 p->irqaction.flags = IRQF_DISABLED | IRQF_TIMER | IRQF_IRQPOLL;


 p->clk = clk_get(&p->pdev->dev, cfg->clk);
 if (IS_ERR(p->clk)) {
  pr_err("sh_tmu: cannot get clock \"%s\"\n", cfg->clk);
  ret = PTR_ERR(p->clk);
  goto err1;
 }

 return sh_tmu_register(p, cfg->name,
          cfg->clockevent_rating,
          cfg->clocksource_rating);
 err1:
 iounmap(p->mapbase);
 err0:
 return ret;
}
