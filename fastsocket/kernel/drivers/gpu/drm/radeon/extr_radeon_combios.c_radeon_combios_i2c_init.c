
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_i2c_bus_rec {int valid; int hw_capable; int mm_i2c; int i2c_id; } ;
struct radeon_device {scalar_t__ family; void** i2c_bus; struct drm_device* ddev; } ;
struct drm_device {int dummy; } ;


 scalar_t__ CHIP_R200 ;
 scalar_t__ CHIP_R300 ;
 scalar_t__ CHIP_R350 ;
 scalar_t__ CHIP_RS300 ;
 scalar_t__ CHIP_RS400 ;
 scalar_t__ CHIP_RS480 ;
 int DDC_CRT2 ;
 int DDC_DVI ;
 int DDC_MONID ;
 int DDC_VGA ;
 struct radeon_i2c_bus_rec combios_setup_i2c_bus (struct radeon_device*,int ,int ,int ) ;
 struct radeon_i2c_bus_rec radeon_combios_get_i2c_info_from_table (struct radeon_device*) ;
 void* radeon_i2c_create (struct drm_device*,struct radeon_i2c_bus_rec*,char*) ;

void radeon_combios_i2c_init(struct radeon_device *rdev)
{
 struct drm_device *dev = rdev->ddev;
 struct radeon_i2c_bus_rec i2c;
 i2c = combios_setup_i2c_bus(rdev, DDC_DVI, 0, 0);
 rdev->i2c_bus[0] = radeon_i2c_create(dev, &i2c, "DVI_DDC");

 i2c = combios_setup_i2c_bus(rdev, DDC_VGA, 0, 0);
 rdev->i2c_bus[1] = radeon_i2c_create(dev, &i2c, "VGA_DDC");


 i2c.valid = 1;
 i2c.hw_capable = 1;
 i2c.mm_i2c = 1;
 i2c.i2c_id = 0xa0;
 rdev->i2c_bus[2] = radeon_i2c_create(dev, &i2c, "MM_I2C");

 if (rdev->family == CHIP_R300 ||
     rdev->family == CHIP_R350) {

 } else if (rdev->family == CHIP_RS300 ||
     rdev->family == CHIP_RS400 ||
     rdev->family == CHIP_RS480) {

  i2c = combios_setup_i2c_bus(rdev, DDC_CRT2, 0, 0);
  rdev->i2c_bus[3] = radeon_i2c_create(dev, &i2c, "MONID");


  i2c = radeon_combios_get_i2c_info_from_table(rdev);
  if (i2c.valid)
   rdev->i2c_bus[4] = radeon_i2c_create(dev, &i2c, "GPIOPAD_MASK");
 } else if ((rdev->family == CHIP_R200) ||
     (rdev->family >= CHIP_R300)) {

  i2c = combios_setup_i2c_bus(rdev, DDC_MONID, 0, 0);
  rdev->i2c_bus[3] = radeon_i2c_create(dev, &i2c, "MONID");
 } else {

  i2c = combios_setup_i2c_bus(rdev, DDC_MONID, 0, 0);
  rdev->i2c_bus[3] = radeon_i2c_create(dev, &i2c, "MONID");

  i2c = combios_setup_i2c_bus(rdev, DDC_CRT2, 0, 0);
  rdev->i2c_bus[4] = radeon_i2c_create(dev, &i2c, "CRT2_DDC");
 }
}
