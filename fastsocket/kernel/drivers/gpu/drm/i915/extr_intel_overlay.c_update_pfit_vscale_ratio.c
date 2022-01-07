
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct intel_overlay {int pfit_vscale_ratio; struct drm_device* dev; } ;
struct drm_device {int * dev_private; } ;
typedef int drm_i915_private_t ;
struct TYPE_2__ {int gen; } ;


 int I915_READ (int ) ;
 TYPE_1__* INTEL_INFO (struct drm_device*) ;
 int PFIT_AUTO_RATIOS ;
 int PFIT_CONTROL ;
 int PFIT_PGM_RATIOS ;
 int PFIT_VERT_SCALE_SHIFT ;
 int PFIT_VERT_SCALE_SHIFT_965 ;
 int VERT_AUTO_SCALE ;

__attribute__((used)) static void update_pfit_vscale_ratio(struct intel_overlay *overlay)
{
 struct drm_device *dev = overlay->dev;
 drm_i915_private_t *dev_priv = dev->dev_private;
 u32 pfit_control = I915_READ(PFIT_CONTROL);
 u32 ratio;




 if (INTEL_INFO(dev)->gen >= 4) {

  ratio = I915_READ(PFIT_PGM_RATIOS) >> PFIT_VERT_SCALE_SHIFT_965;
 } else {
  if (pfit_control & VERT_AUTO_SCALE)
   ratio = I915_READ(PFIT_AUTO_RATIOS);
  else
   ratio = I915_READ(PFIT_PGM_RATIOS);
  ratio >>= PFIT_VERT_SCALE_SHIFT;
 }

 overlay->pfit_vscale_ratio = ratio;
}
