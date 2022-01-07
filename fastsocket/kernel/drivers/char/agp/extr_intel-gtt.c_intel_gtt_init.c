
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int gtt_mappable_entries; int gtt_total_entries; int PGETBL_save; int needs_dmar; int gma_bus_addr; int pcidev; int stolen_size; scalar_t__ registers; TYPE_2__* driver; int * gtt; int gtt_bus_addr; TYPE_1__* bridge_dev; } ;
struct TYPE_5__ {int (* setup ) () ;int (* cleanup ) () ;} ;
struct TYPE_4__ {int dev; } ;


 int ENOMEM ;
 scalar_t__ HAS_PGTBL_EN ;
 int I810_GMADDR ;
 scalar_t__ I810_PGETBL_CTL ;
 int I810_PGETBL_ENABLED ;
 int I915_GMADDR ;
 int INTEL_GTT_GEN ;
 int PCI_BASE_ADDRESS_MEM_MASK ;
 scalar_t__ USE_PCI_DMA_API ;
 int dev_info (int *,char*,int,int) ;
 int global_cache_flush () ;
 scalar_t__ intel_gtt_can_wc () ;
 int intel_gtt_cleanup () ;
 int intel_gtt_mappable_entries () ;
 int intel_gtt_setup_scratch_page () ;
 int intel_gtt_stolen_size () ;
 int intel_gtt_total_entries () ;
 TYPE_3__ intel_private ;
 int * ioremap (int ,int) ;
 int * ioremap_wc (int ,int) ;
 int iounmap (scalar_t__) ;
 int pci_read_config_dword (int ,int ,int*) ;
 int readl (scalar_t__) ;
 int stub1 () ;
 int stub2 () ;

__attribute__((used)) static int intel_gtt_init(void)
{
 u32 gma_addr;
 u32 gtt_map_size;
 int ret;

 ret = intel_private.driver->setup();
 if (ret != 0)
  return ret;

 intel_private.gtt_mappable_entries = intel_gtt_mappable_entries();
 intel_private.gtt_total_entries = intel_gtt_total_entries();


 intel_private.PGETBL_save =
  readl(intel_private.registers+I810_PGETBL_CTL)
   & ~I810_PGETBL_ENABLED;

 if (HAS_PGTBL_EN)
  intel_private.PGETBL_save |= I810_PGETBL_ENABLED;

 dev_info(&intel_private.bridge_dev->dev,
   "detected gtt size: %dK total, %dK mappable\n",
   intel_private.gtt_total_entries * 4,
   intel_private.gtt_mappable_entries * 4);

 gtt_map_size = intel_private.gtt_total_entries * 4;

 intel_private.gtt = ((void*)0);
 if (intel_gtt_can_wc())
  intel_private.gtt = ioremap_wc(intel_private.gtt_bus_addr,
            gtt_map_size);
 if (intel_private.gtt == ((void*)0))
  intel_private.gtt = ioremap(intel_private.gtt_bus_addr,
         gtt_map_size);
 if (intel_private.gtt == ((void*)0)) {
  intel_private.driver->cleanup();
  iounmap(intel_private.registers);
  return -ENOMEM;
 }

 global_cache_flush();

 intel_private.stolen_size = intel_gtt_stolen_size();

 intel_private.needs_dmar = USE_PCI_DMA_API && INTEL_GTT_GEN > 2;

 ret = intel_gtt_setup_scratch_page();
 if (ret != 0) {
  intel_gtt_cleanup();
  return ret;
 }

 if (INTEL_GTT_GEN <= 2)
  pci_read_config_dword(intel_private.pcidev, I810_GMADDR,
          &gma_addr);
 else
  pci_read_config_dword(intel_private.pcidev, I915_GMADDR,
          &gma_addr);

 intel_private.gma_bus_addr = (gma_addr & PCI_BASE_ADDRESS_MEM_MASK);

 return 0;
}
