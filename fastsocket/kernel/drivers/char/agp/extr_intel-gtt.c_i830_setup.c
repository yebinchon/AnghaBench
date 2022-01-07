
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ gtt_bus_addr; int registers; int pcidev; } ;


 int ENOMEM ;
 int I810_MMADDR ;
 scalar_t__ I810_PTE_BASE ;
 int KB (int) ;
 TYPE_1__ intel_private ;
 int ioremap (int,int ) ;
 int pci_read_config_dword (int ,int ,int*) ;

__attribute__((used)) static int i830_setup(void)
{
 u32 reg_addr;

 pci_read_config_dword(intel_private.pcidev, I810_MMADDR, &reg_addr);
 reg_addr &= 0xfff80000;

 intel_private.registers = ioremap(reg_addr, KB(64));
 if (!intel_private.registers)
  return -ENOMEM;

 intel_private.gtt_bus_addr = reg_addr + I810_PTE_BASE;

 return 0;
}
