
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int MXC_CRMAP_AMCR ;
 int MXC_CRMAP_AMCR_SW_AP ;
 int __raw_readl (int ) ;
 int __raw_writel (int ,int ) ;
 int cpu_reset (int ) ;
 int mdelay (int) ;

void mxc91231_arch_reset(char mode, const char *cmd)
{
 u32 amcr;


 amcr = __raw_readl(MXC_CRMAP_AMCR);
 amcr &= ~MXC_CRMAP_AMCR_SW_AP;
 __raw_writel(amcr, MXC_CRMAP_AMCR);

 mdelay(10);
 cpu_reset(0);
}
