
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct clk {int dummy; } ;


 int clk_disable (struct clk*) ;
 struct clk* platform_get_drvdata (struct platform_device*) ;
 struct platform_device* to_platform_device (int ) ;

__attribute__((used)) static int tc6387xb_mmc_disable(struct platform_device *mmc)
{
 struct platform_device *dev = to_platform_device(mmc->dev.parent);
 struct clk *clk32k = platform_get_drvdata(dev);

 clk_disable(clk32k);

 return 0;
}
