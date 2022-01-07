
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct platform_device {int dummy; } ;
struct m48t59_private {scalar_t__ ioaddr; } ;
struct device {int dummy; } ;


 struct m48t59_private* platform_get_drvdata (struct platform_device*) ;
 struct platform_device* to_platform_device (struct device*) ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static void
m48t59_mem_writeb(struct device *dev, u32 ofs, u8 val)
{
 struct platform_device *pdev = to_platform_device(dev);
 struct m48t59_private *m48t59 = platform_get_drvdata(pdev);

 writeb(val, m48t59->ioaddr+ofs);
}
