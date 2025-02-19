
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* uint8_t ;
typedef scalar_t__ uint16_t ;
struct radeon_i2c_bus_rec {int valid; int hw_capable; int mm_i2c; int i2c_id; } ;
struct radeon_encoder_ext_tmds {int slave_addr; int * i2c_bus; int dvo_chip; } ;
struct TYPE_2__ {struct drm_device* dev; } ;
struct radeon_encoder {TYPE_1__ base; } ;
struct radeon_device {int flags; } ;
struct drm_device {struct radeon_device* dev_private; } ;
typedef enum radeon_combios_ddc { ____Placeholder_radeon_combios_ddc } radeon_combios_ddc ;


 int COMBIOS_EXT_TMDS_INFO_TABLE ;
 int DDC_LCD ;
 int DDC_MONID ;
 int DRM_DEBUG_KMS (char*,void*) ;
 int DRM_INFO (char*) ;
 int DVO_SIL164 ;
 int RADEON_IS_IGP ;
 void* RBIOS8 (scalar_t__) ;
 scalar_t__ combios_get_table_offset (struct drm_device*,int ) ;
 struct radeon_i2c_bus_rec combios_setup_i2c_bus (struct radeon_device*,int,int ,int ) ;
 void* radeon_i2c_lookup (struct radeon_device*,struct radeon_i2c_bus_rec*) ;

bool radeon_legacy_get_ext_tmds_info_from_combios(struct radeon_encoder *encoder,
        struct radeon_encoder_ext_tmds *tmds)
{
 struct drm_device *dev = encoder->base.dev;
 struct radeon_device *rdev = dev->dev_private;
 uint16_t offset;
 uint8_t ver;
 enum radeon_combios_ddc gpio;
 struct radeon_i2c_bus_rec i2c_bus;

 tmds->i2c_bus = ((void*)0);
 if (rdev->flags & RADEON_IS_IGP) {
  i2c_bus = combios_setup_i2c_bus(rdev, DDC_MONID, 0, 0);
  tmds->i2c_bus = radeon_i2c_lookup(rdev, &i2c_bus);
  tmds->dvo_chip = DVO_SIL164;
  tmds->slave_addr = 0x70 >> 1;
 } else {
  offset = combios_get_table_offset(dev, COMBIOS_EXT_TMDS_INFO_TABLE);
  if (offset) {
   ver = RBIOS8(offset);
   DRM_DEBUG_KMS("External TMDS Table revision: %d\n", ver);
   tmds->slave_addr = RBIOS8(offset + 4 + 2);
   tmds->slave_addr >>= 1;
   gpio = RBIOS8(offset + 4 + 3);
   if (gpio == DDC_LCD) {

    i2c_bus.valid = 1;
    i2c_bus.hw_capable = 1;
    i2c_bus.mm_i2c = 1;
    i2c_bus.i2c_id = 0xa0;
   } else
    i2c_bus = combios_setup_i2c_bus(rdev, gpio, 0, 0);
   tmds->i2c_bus = radeon_i2c_lookup(rdev, &i2c_bus);
  }
 }

 if (!tmds->i2c_bus) {
  DRM_INFO("No valid Ext TMDS info found in BIOS\n");
  return 0;
 }

 return 1;
}
