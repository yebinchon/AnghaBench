
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int OMAP1_IO_ADDRESS (int ) ;
 int OMAP2_IO_ADDRESS (int ) ;
 int __raw_writeb (int ,int ) ;
 scalar_t__ cpu_class_is_omap1 () ;

void omap_writeb(u8 v, u32 pa)
{
 if (cpu_class_is_omap1())
  __raw_writeb(v, OMAP1_IO_ADDRESS(pa));
 else
  __raw_writeb(v, OMAP2_IO_ADDRESS(pa));
}
