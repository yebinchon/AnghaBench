
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct radeon_i2c_bus_rec {int dummy; } ;
struct radeon_encoder_ext_tmds {int slave_addr; int dvo_chip; int i2c_bus; } ;
struct TYPE_3__ {struct drm_device* dev; } ;
struct radeon_encoder {TYPE_1__ base; } ;
struct TYPE_4__ {int connector_table; } ;
struct radeon_device {TYPE_2__ mode_info; } ;
struct drm_device {struct radeon_device* dev_private; } ;




 int DDC_MONID ;
 int DVO_SIL164 ;
 struct radeon_i2c_bus_rec combios_setup_i2c_bus (struct radeon_device*,int ,int ,int ) ;
 int radeon_i2c_lookup (struct radeon_device*,struct radeon_i2c_bus_rec*) ;

bool radeon_legacy_get_ext_tmds_info_from_table(struct radeon_encoder *encoder,
      struct radeon_encoder_ext_tmds *tmds)
{
 struct drm_device *dev = encoder->base.dev;
 struct radeon_device *rdev = dev->dev_private;
 struct radeon_i2c_bus_rec i2c_bus;


 i2c_bus = combios_setup_i2c_bus(rdev, DDC_MONID, 0, 0);
 tmds->i2c_bus = radeon_i2c_lookup(rdev, &i2c_bus);


 switch (rdev->mode_info.connector_table) {
 case 128:
 case 129:
 default:
  tmds->dvo_chip = DVO_SIL164;
  tmds->slave_addr = 0x70 >> 1;
  break;
 }

 return 1;
}
