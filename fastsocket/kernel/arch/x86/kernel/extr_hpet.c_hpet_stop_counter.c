
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HPET_CFG ;
 unsigned long HPET_CFG_ENABLE ;
 unsigned long hpet_readl (int ) ;
 int hpet_writel (unsigned long,int ) ;

__attribute__((used)) static void hpet_stop_counter(void)
{
 unsigned long cfg = hpet_readl(HPET_CFG);
 cfg &= ~HPET_CFG_ENABLE;
 hpet_writel(cfg, HPET_CFG);
}
