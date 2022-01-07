
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {char* i81x_gtt_table; int num_dcache_entries; TYPE_1__* pcidev; scalar_t__ registers; scalar_t__ gtt_bus_addr; } ;
struct TYPE_3__ {int dev; } ;


 int ENOMEM ;
 scalar_t__ I810_DRAM_CTL ;
 int I810_DRAM_ROW_0 ;
 int I810_DRAM_ROW_0_SDRAM ;
 int I810_GTT_ORDER ;
 int I810_MMADDR ;
 scalar_t__ I810_PGETBL_CTL ;
 int I810_PGETBL_ENABLED ;
 scalar_t__ I810_PTE_BASE ;
 int KB (int) ;
 char* alloc_gatt_pages (int ) ;
 int dev_info (int *,char*) ;
 TYPE_2__ intel_private ;
 scalar_t__ ioremap (int,int ) ;
 int pci_read_config_dword (TYPE_1__*,int ,int*) ;
 int readl (scalar_t__) ;
 int virt_to_phys (char*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int i810_setup(void)
{
 u32 reg_addr;
 char *gtt_table;


 gtt_table = alloc_gatt_pages(I810_GTT_ORDER);
 if (gtt_table == ((void*)0))
  return -ENOMEM;
 intel_private.i81x_gtt_table = gtt_table;

 pci_read_config_dword(intel_private.pcidev, I810_MMADDR, &reg_addr);
 reg_addr &= 0xfff80000;

 intel_private.registers = ioremap(reg_addr, KB(64));
 if (!intel_private.registers)
  return -ENOMEM;

 writel(virt_to_phys(gtt_table) | I810_PGETBL_ENABLED,
        intel_private.registers+I810_PGETBL_CTL);

 intel_private.gtt_bus_addr = reg_addr + I810_PTE_BASE;

 if ((readl(intel_private.registers+I810_DRAM_CTL)
  & I810_DRAM_ROW_0) == I810_DRAM_ROW_0_SDRAM) {
  dev_info(&intel_private.pcidev->dev,
    "detected 4MB dedicated video ram\n");
  intel_private.num_dcache_entries = 1024;
 }

 return 0;
}
