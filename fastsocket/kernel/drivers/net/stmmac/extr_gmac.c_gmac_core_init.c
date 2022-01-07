
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ GMAC_CONTROL ;
 int GMAC_CORE_INIT ;
 scalar_t__ GMAC_INT_MASK ;
 scalar_t__ GMAC_MMC_CTRL ;
 scalar_t__ GMAC_VLAN_TAG ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void gmac_core_init(unsigned long ioaddr)
{
 u32 value = readl(ioaddr + GMAC_CONTROL);
 value |= GMAC_CORE_INIT;
 writel(value, ioaddr + GMAC_CONTROL);





 writel(0x8, ioaddr + GMAC_MMC_CTRL);

 writel(0x207, ioaddr + GMAC_INT_MASK);





 return;
}
