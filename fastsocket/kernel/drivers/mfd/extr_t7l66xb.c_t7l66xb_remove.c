
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct t7l66xb_platform_data {int (* disable ) (struct platform_device*) ;} ;
struct t7l66xb {int rscr; int scr; int clk48m; } ;
struct TYPE_2__ {struct t7l66xb_platform_data* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;


 int clk_disable (int ) ;
 int clk_put (int ) ;
 int iounmap (int ) ;
 int kfree (struct t7l66xb*) ;
 int mfd_remove_devices (TYPE_1__*) ;
 struct t7l66xb* platform_get_drvdata (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,int *) ;
 int release_resource (int *) ;
 int stub1 (struct platform_device*) ;
 int t7l66xb_detach_irq (struct platform_device*) ;

__attribute__((used)) static int t7l66xb_remove(struct platform_device *dev)
{
 struct t7l66xb_platform_data *pdata = dev->dev.platform_data;
 struct t7l66xb *t7l66xb = platform_get_drvdata(dev);
 int ret;

 ret = pdata->disable(dev);
 clk_disable(t7l66xb->clk48m);
 clk_put(t7l66xb->clk48m);
 t7l66xb_detach_irq(dev);
 iounmap(t7l66xb->scr);
 release_resource(&t7l66xb->rscr);
 mfd_remove_devices(&dev->dev);
 platform_set_drvdata(dev, ((void*)0));
 kfree(t7l66xb);

 return ret;

}
