
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct radeon_i2c_bus_rec {scalar_t__ mask_clk_reg; } ;
struct radeon_hpd {int dummy; } ;
struct drm_device {TYPE_1__* pdev; } ;
typedef enum radeon_combios_connector { ____Placeholder_radeon_combios_connector } radeon_combios_connector ;
struct TYPE_2__ {int device; int subsystem_vendor; int subsystem_device; } ;


 int CONNECTOR_CRT_LEGACY ;
 int CONNECTOR_DVI_I_LEGACY ;
 scalar_t__ RADEON_GPIO_CRT2_DDC ;

__attribute__((used)) static bool radeon_apply_legacy_quirks(struct drm_device *dev,
           int bios_index,
           enum radeon_combios_connector
           *legacy_connector,
           struct radeon_i2c_bus_rec *ddc_i2c,
           struct radeon_hpd *hpd)
{



 if (dev->pdev->device == 0x515e &&
     dev->pdev->subsystem_vendor == 0x1014) {
  if (*legacy_connector == CONNECTOR_CRT_LEGACY &&
      ddc_i2c->mask_clk_reg == RADEON_GPIO_CRT2_DDC)
   return 0;
 }


 if (dev->pdev->device == 0x5B60 &&
     dev->pdev->subsystem_vendor == 0x17af &&
     dev->pdev->subsystem_device == 0x201e && bios_index == 2) {
  if (*legacy_connector == CONNECTOR_DVI_I_LEGACY)
   return 0;
 }

 return 1;
}
