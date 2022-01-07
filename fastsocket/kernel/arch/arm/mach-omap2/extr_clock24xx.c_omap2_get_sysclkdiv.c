
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int OMAP_SYSCLKDIV_MASK ;
 int OMAP_SYSCLKDIV_SHIFT ;
 int __raw_readl (int ) ;
 int prcm_clksrc_ctrl ;

__attribute__((used)) static u32 omap2_get_sysclkdiv(void)
{
 u32 div;

 div = __raw_readl(prcm_clksrc_ctrl);
 div &= OMAP_SYSCLKDIV_MASK;
 div >>= OMAP_SYSCLKDIV_SHIFT;

 return div;
}
