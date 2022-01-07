
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_mobile_i2c_data {int clk; int reg; int adap; } ;
struct platform_device {int dev; } ;


 int clk_put (int ) ;
 int i2c_del_adapter (int *) ;
 int iounmap (int ) ;
 int kfree (struct sh_mobile_i2c_data*) ;
 struct sh_mobile_i2c_data* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int sh_mobile_i2c_hook_irqs (struct platform_device*,int ) ;

__attribute__((used)) static int sh_mobile_i2c_remove(struct platform_device *dev)
{
 struct sh_mobile_i2c_data *pd = platform_get_drvdata(dev);

 i2c_del_adapter(&pd->adap);
 iounmap(pd->reg);
 sh_mobile_i2c_hook_irqs(dev, 0);
 clk_put(pd->clk);
 pm_runtime_disable(&dev->dev);
 kfree(pd);
 return 0;
}
