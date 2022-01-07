
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct radeon_device {scalar_t__ is_atom_bios; } ;
struct drm_encoder {TYPE_1__* dev; } ;
struct TYPE_2__ {struct radeon_device* dev_private; } ;


 int DRM_MODE_DPMS_OFF ;
 int radeon_atom_output_lock (struct drm_encoder*,int) ;
 int radeon_combios_output_lock (struct drm_encoder*,int) ;
 int radeon_legacy_primary_dac_dpms (struct drm_encoder*,int ) ;

__attribute__((used)) static void radeon_legacy_primary_dac_prepare(struct drm_encoder *encoder)
{
 struct radeon_device *rdev = encoder->dev->dev_private;

 if (rdev->is_atom_bios)
  radeon_atom_output_lock(encoder, 1);
 else
  radeon_combios_output_lock(encoder, 1);
 radeon_legacy_primary_dac_dpms(encoder, DRM_MODE_DPMS_OFF);
}
