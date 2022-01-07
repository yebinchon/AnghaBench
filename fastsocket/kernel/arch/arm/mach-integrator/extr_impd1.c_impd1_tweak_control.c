
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct impd1_module {scalar_t__ base; } ;
struct device {int dummy; } ;


 scalar_t__ IMPD1_CTRL ;
 struct impd1_module* dev_get_drvdata (struct device*) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

void impd1_tweak_control(struct device *dev, u32 mask, u32 val)
{
 struct impd1_module *impd1 = dev_get_drvdata(dev);
 u32 cur;

 val &= mask;
 cur = readl(impd1->base + IMPD1_CTRL) & ~mask;
 writel(cur | val, impd1->base + IMPD1_CTRL);
}
