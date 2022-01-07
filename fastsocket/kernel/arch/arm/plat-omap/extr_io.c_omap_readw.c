
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int OMAP1_IO_ADDRESS (int ) ;
 int OMAP2_IO_ADDRESS (int ) ;
 int __raw_readw (int ) ;
 scalar_t__ cpu_class_is_omap1 () ;

u16 omap_readw(u32 pa)
{
 if (cpu_class_is_omap1())
  return __raw_readw(OMAP1_IO_ADDRESS(pa));
 else
  return __raw_readw(OMAP2_IO_ADDRESS(pa));
}
