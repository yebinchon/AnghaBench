
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct clk {int dummy; } ;


 int clk_disable (struct clk*) ;
 int clk_put (struct clk*) ;
 int mfd_remove_devices (int *) ;
 struct clk* platform_get_drvdata (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,int *) ;

__attribute__((used)) static int tc6387xb_remove(struct platform_device *dev)
{
 struct clk *clk32k = platform_get_drvdata(dev);

 mfd_remove_devices(&dev->dev);
 clk_disable(clk32k);
 clk_put(clk32k);
 platform_set_drvdata(dev, ((void*)0));

 return 0;
}
