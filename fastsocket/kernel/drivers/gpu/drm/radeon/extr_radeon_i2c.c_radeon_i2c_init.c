
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {scalar_t__ is_atom_bios; } ;


 int radeon_atombios_i2c_init (struct radeon_device*) ;
 int radeon_combios_i2c_init (struct radeon_device*) ;

void radeon_i2c_init(struct radeon_device *rdev)
{
 if (rdev->is_atom_bios)
  radeon_atombios_i2c_init(rdev);
 else
  radeon_combios_i2c_init(rdev);
}
