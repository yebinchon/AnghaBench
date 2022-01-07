
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct radeon_encoder_int_tmds {int dummy; } ;
struct TYPE_2__ {struct drm_device* dev; } ;
struct radeon_encoder {TYPE_1__ base; } ;
struct radeon_device {scalar_t__ is_atom_bios; } ;
struct drm_device {struct radeon_device* dev_private; } ;


 int GFP_KERNEL ;
 struct radeon_encoder_int_tmds* kzalloc (int,int ) ;
 int radeon_atombios_get_tmds_info (struct radeon_encoder*,struct radeon_encoder_int_tmds*) ;
 int radeon_legacy_get_tmds_info_from_combios (struct radeon_encoder*,struct radeon_encoder_int_tmds*) ;
 int radeon_legacy_get_tmds_info_from_table (struct radeon_encoder*,struct radeon_encoder_int_tmds*) ;

__attribute__((used)) static struct radeon_encoder_int_tmds *radeon_legacy_get_tmds_info(struct radeon_encoder *encoder)
{
 struct drm_device *dev = encoder->base.dev;
 struct radeon_device *rdev = dev->dev_private;
 struct radeon_encoder_int_tmds *tmds = ((void*)0);
 bool ret;

 tmds = kzalloc(sizeof(struct radeon_encoder_int_tmds), GFP_KERNEL);

 if (!tmds)
  return ((void*)0);

 if (rdev->is_atom_bios)
  ret = radeon_atombios_get_tmds_info(encoder, tmds);
 else
  ret = radeon_legacy_get_tmds_info_from_combios(encoder, tmds);

 if (ret == 0)
  radeon_legacy_get_tmds_info_from_table(encoder, tmds);

 return tmds;
}
