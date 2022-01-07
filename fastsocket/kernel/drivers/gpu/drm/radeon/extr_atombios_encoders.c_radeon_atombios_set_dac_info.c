
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct radeon_encoder_atom_dac {int tv_std; } ;
struct TYPE_2__ {struct drm_device* dev; } ;
struct radeon_encoder {TYPE_1__ base; } ;
struct radeon_device {int dummy; } ;
struct drm_device {struct radeon_device* dev_private; } ;


 int GFP_KERNEL ;
 struct radeon_encoder_atom_dac* kzalloc (int,int ) ;
 int radeon_atombios_get_tv_info (struct radeon_device*) ;

__attribute__((used)) static struct radeon_encoder_atom_dac *
radeon_atombios_set_dac_info(struct radeon_encoder *radeon_encoder)
{
 struct drm_device *dev = radeon_encoder->base.dev;
 struct radeon_device *rdev = dev->dev_private;
 struct radeon_encoder_atom_dac *dac = kzalloc(sizeof(struct radeon_encoder_atom_dac), GFP_KERNEL);

 if (!dac)
  return ((void*)0);

 dac->tv_std = radeon_atombios_get_tv_info(rdev);
 return dac;
}
