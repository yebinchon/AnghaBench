
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int PERF_CKCTL_REG ;
 int bcm_perf_readl (int ) ;
 int bcm_perf_writel (int ,int ) ;

__attribute__((used)) static void bcm_hwclock_set(u32 mask, int enable)
{
 u32 reg;

 reg = bcm_perf_readl(PERF_CKCTL_REG);
 if (enable)
  reg |= mask;
 else
  reg &= ~mask;
 bcm_perf_writel(reg, PERF_CKCTL_REG);
}
