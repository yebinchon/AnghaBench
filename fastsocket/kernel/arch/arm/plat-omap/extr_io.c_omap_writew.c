
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int OMAP1_IO_ADDRESS (int ) ;
 int OMAP2_IO_ADDRESS (int ) ;
 int __raw_writew (int ,int ) ;
 scalar_t__ cpu_class_is_omap1 () ;

void omap_writew(u16 v, u32 pa)
{
 if (cpu_class_is_omap1())
  __raw_writew(v, OMAP1_IO_ADDRESS(pa));
 else
  __raw_writew(v, OMAP2_IO_ADDRESS(pa));
}
