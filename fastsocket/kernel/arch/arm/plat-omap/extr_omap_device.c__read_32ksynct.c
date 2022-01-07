
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BUG () ;
 int OMAP2_IO_ADDRESS (scalar_t__) ;
 scalar_t__ OMAP_32KSYNCT_BASE ;
 int __raw_readl (int ) ;
 int cpu_class_is_omap2 () ;

__attribute__((used)) static u32 _read_32ksynct(void)
{
 if (!cpu_class_is_omap2())
  BUG();

 return __raw_readl(OMAP2_IO_ADDRESS(OMAP_32KSYNCT_BASE + 0x010));
}
