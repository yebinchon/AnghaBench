
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct nouveau_pll_vals {int dummy; } ;
struct drm_device {int pci_device; } ;
typedef enum nvbios_pll_type { ____Placeholder_nvbios_pll_type } nvbios_pll_type ;


 int CHIPSET_NFORCE ;
 int CHIPSET_NFORCE2 ;
 int PLL_MEMORY ;
 int nouveau_hw_get_pllvals (struct drm_device*,int,struct nouveau_pll_vals*) ;
 int nouveau_hw_pllvals_to_clk (struct nouveau_pll_vals*) ;
 int pci_get_bus_and_slot (int ,int) ;
 int pci_read_config_dword (int ,int,int*) ;

int
nouveau_hw_get_clock(struct drm_device *dev, enum nvbios_pll_type plltype)
{
 struct nouveau_pll_vals pllvals;
 int ret;

 if (plltype == PLL_MEMORY &&
     (dev->pci_device & 0x0ff0) == CHIPSET_NFORCE) {
  uint32_t mpllP;

  pci_read_config_dword(pci_get_bus_and_slot(0, 3), 0x6c, &mpllP);
  if (!mpllP)
   mpllP = 4;

  return 400000 / mpllP;
 } else
 if (plltype == PLL_MEMORY &&
     (dev->pci_device & 0xff0) == CHIPSET_NFORCE2) {
  uint32_t clock;

  pci_read_config_dword(pci_get_bus_and_slot(0, 5), 0x4c, &clock);
  return clock;
 }

 ret = nouveau_hw_get_pllvals(dev, plltype, &pllvals);
 if (ret)
  return ret;

 return nouveau_hw_pllvals_to_clk(&pllvals);
}
