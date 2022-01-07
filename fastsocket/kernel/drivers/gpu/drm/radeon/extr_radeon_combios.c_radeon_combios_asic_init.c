
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct radeon_device {int flags; scalar_t__ family; TYPE_1__* pdev; int * bios; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct TYPE_2__ {int subsystem_vendor; int subsystem_device; } ;


 scalar_t__ CHIP_RS480 ;
 int COMBIOS_ASIC_INIT_1_TABLE ;
 int COMBIOS_ASIC_INIT_2_TABLE ;
 int COMBIOS_ASIC_INIT_3_TABLE ;
 int COMBIOS_ASIC_INIT_4_TABLE ;
 int COMBIOS_DYN_CLK_1_TABLE ;
 int COMBIOS_PLL_INIT_TABLE ;
 int COMBIOS_RAM_RESET_TABLE ;
 int RADEON_IS_IGP ;
 scalar_t__ combios_get_table_offset (struct drm_device*,int ) ;
 int combios_parse_mmio_table (struct drm_device*,scalar_t__) ;
 int combios_parse_pll_table (struct drm_device*,scalar_t__) ;
 int combios_parse_ram_reset_table (struct drm_device*,scalar_t__) ;
 int combios_write_ram_size (struct drm_device*) ;

void radeon_combios_asic_init(struct drm_device *dev)
{
 struct radeon_device *rdev = dev->dev_private;
 uint16_t table;


 if (rdev->bios == ((void*)0))
  return;


 table = combios_get_table_offset(dev, COMBIOS_ASIC_INIT_1_TABLE);
 if (table)
  combios_parse_mmio_table(dev, table);


 table = combios_get_table_offset(dev, COMBIOS_PLL_INIT_TABLE);
 if (table)
  combios_parse_pll_table(dev, table);


 table = combios_get_table_offset(dev, COMBIOS_ASIC_INIT_2_TABLE);
 if (table)
  combios_parse_mmio_table(dev, table);

 if (!(rdev->flags & RADEON_IS_IGP)) {

  table =
      combios_get_table_offset(dev, COMBIOS_ASIC_INIT_4_TABLE);
  if (table)
   combios_parse_mmio_table(dev, table);


  table = combios_get_table_offset(dev, COMBIOS_RAM_RESET_TABLE);
  if (table)
   combios_parse_ram_reset_table(dev, table);


  table =
      combios_get_table_offset(dev, COMBIOS_ASIC_INIT_3_TABLE);
  if (table)
   combios_parse_mmio_table(dev, table);


  combios_write_ram_size(dev);
 }




 if (rdev->family == CHIP_RS480 &&
     rdev->pdev->subsystem_vendor == 0x103c &&
     rdev->pdev->subsystem_device == 0x308b)
  return;




 if (rdev->family == CHIP_RS480 &&
     rdev->pdev->subsystem_vendor == 0x103c &&
     rdev->pdev->subsystem_device == 0x30a4)
  return;




 if (rdev->family == CHIP_RS480 &&
     rdev->pdev->subsystem_vendor == 0x103c &&
     rdev->pdev->subsystem_device == 0x30ae)
  return;


 table = combios_get_table_offset(dev, COMBIOS_DYN_CLK_1_TABLE);
 if (table)
  combios_parse_pll_table(dev, table);

}
