
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HPET_CFG ;
 unsigned long HPET_CFG_ENABLE ;
 unsigned long HPET_CFG_LEGACY ;
 int hpet_address ;
 scalar_t__ hpet_legacy_int_enabled ;
 unsigned long hpet_readl (int ) ;
 int hpet_virt_address ;
 int hpet_writel (unsigned long,int ) ;
 int is_hpet_capable () ;

void hpet_disable(void)
{
 unsigned long cfg;

 if (!is_hpet_capable() || !hpet_address || !hpet_virt_address)
  return;

 cfg = hpet_readl(HPET_CFG);
 if (hpet_legacy_int_enabled) {
  cfg &= ~HPET_CFG_LEGACY;
  hpet_legacy_int_enabled = 0;
 }
 cfg &= ~HPET_CFG_ENABLE;
 hpet_writel(cfg, HPET_CFG);
}
