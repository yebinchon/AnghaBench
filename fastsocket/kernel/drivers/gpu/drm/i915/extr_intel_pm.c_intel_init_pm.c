
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* get_fifo_size; void* init_clock_gating; int * update_wm; int update_linetime_wm; void* update_sprite_wm; int disable_fbc; int enable_fbc; int fbc_enabled; } ;
struct drm_i915_private {int is_ddr3; TYPE_1__ display; int mem_freq; int fsb_freq; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int DRM_DEBUG_KMS (char*) ;
 int DRM_INFO (char*,char*,int ,int ) ;
 scalar_t__ HAS_PCH_SPLIT (struct drm_device*) ;
 scalar_t__ I915_HAS_FBC (struct drm_device*) ;
 int I915_READ (int ) ;
 int ILK_SRLT_MASK ;
 scalar_t__ IS_845G (struct drm_device*) ;
 scalar_t__ IS_BROADWATER (struct drm_device*) ;
 scalar_t__ IS_CRESTLINE (struct drm_device*) ;
 scalar_t__ IS_G4X (struct drm_device*) ;
 scalar_t__ IS_GEN3 (struct drm_device*) ;
 scalar_t__ IS_GEN4 (struct drm_device*) ;
 scalar_t__ IS_GEN5 (struct drm_device*) ;
 scalar_t__ IS_GEN6 (struct drm_device*) ;
 scalar_t__ IS_GM45 (struct drm_device*) ;
 scalar_t__ IS_HASWELL (struct drm_device*) ;
 scalar_t__ IS_I85X (struct drm_device*) ;
 scalar_t__ IS_I865G (struct drm_device*) ;
 scalar_t__ IS_IVYBRIDGE (struct drm_device*) ;
 scalar_t__ IS_PINEVIEW (struct drm_device*) ;
 int IS_PINEVIEW_G (struct drm_device*) ;
 scalar_t__ IS_VALLEYVIEW (struct drm_device*) ;
 int MLTR_ILK ;
 scalar_t__ SNB_READ_WM0_LATENCY () ;
 void* broadwater_init_clock_gating ;
 void* crestline_init_clock_gating ;
 int g4x_disable_fbc ;
 int g4x_enable_fbc ;
 int g4x_fbc_enabled ;
 void* g4x_init_clock_gating ;
 int * g4x_update_wm ;
 void* gen3_init_clock_gating ;
 void* gen6_init_clock_gating ;
 void* haswell_init_clock_gating ;
 int haswell_update_linetime_wm ;
 void* i830_get_fifo_size ;
 void* i830_init_clock_gating ;
 void* i830_update_wm ;
 void* i845_get_fifo_size ;
 void* i85x_get_fifo_size ;
 void* i85x_init_clock_gating ;
 int i8xx_disable_fbc ;
 int i8xx_enable_fbc ;
 int i8xx_fbc_enabled ;
 int i915_ironlake_get_mem_freq (struct drm_device*) ;
 int i915_pineview_get_mem_freq (struct drm_device*) ;
 int * i965_update_wm ;
 void* i9xx_get_fifo_size ;
 void* i9xx_update_wm ;
 int intel_get_cxsr_latency (int ,int,int ,int ) ;
 int ironlake_disable_fbc ;
 int ironlake_enable_fbc ;
 int ironlake_fbc_enabled ;
 void* ironlake_init_clock_gating ;
 int * ironlake_update_wm ;
 void* ivybridge_init_clock_gating ;
 int * ivybridge_update_wm ;
 int pineview_disable_cxsr (struct drm_device*) ;
 int * pineview_update_wm ;
 void* sandybridge_update_sprite_wm ;
 void* sandybridge_update_wm ;
 void* valleyview_init_clock_gating ;
 int * valleyview_update_wm ;

void intel_init_pm(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = dev->dev_private;

 if (I915_HAS_FBC(dev)) {
  if (HAS_PCH_SPLIT(dev)) {
   dev_priv->display.fbc_enabled = ironlake_fbc_enabled;
   dev_priv->display.enable_fbc = ironlake_enable_fbc;
   dev_priv->display.disable_fbc = ironlake_disable_fbc;
  } else if (IS_GM45(dev)) {
   dev_priv->display.fbc_enabled = g4x_fbc_enabled;
   dev_priv->display.enable_fbc = g4x_enable_fbc;
   dev_priv->display.disable_fbc = g4x_disable_fbc;
  } else if (IS_CRESTLINE(dev)) {
   dev_priv->display.fbc_enabled = i8xx_fbc_enabled;
   dev_priv->display.enable_fbc = i8xx_enable_fbc;
   dev_priv->display.disable_fbc = i8xx_disable_fbc;
  }

 }


 if (IS_PINEVIEW(dev))
  i915_pineview_get_mem_freq(dev);
 else if (IS_GEN5(dev))
  i915_ironlake_get_mem_freq(dev);


 if (HAS_PCH_SPLIT(dev)) {
  if (IS_GEN5(dev)) {
   if (I915_READ(MLTR_ILK) & ILK_SRLT_MASK)
    dev_priv->display.update_wm = ironlake_update_wm;
   else {
    DRM_DEBUG_KMS("Failed to get proper latency. "
           "Disable CxSR\n");
    dev_priv->display.update_wm = ((void*)0);
   }
   dev_priv->display.init_clock_gating = ironlake_init_clock_gating;
  } else if (IS_GEN6(dev)) {
   if (SNB_READ_WM0_LATENCY()) {
    dev_priv->display.update_wm = sandybridge_update_wm;
    dev_priv->display.update_sprite_wm = sandybridge_update_sprite_wm;
   } else {
    DRM_DEBUG_KMS("Failed to read display plane latency. "
           "Disable CxSR\n");
    dev_priv->display.update_wm = ((void*)0);
   }
   dev_priv->display.init_clock_gating = gen6_init_clock_gating;
  } else if (IS_IVYBRIDGE(dev)) {

   if (SNB_READ_WM0_LATENCY()) {
    dev_priv->display.update_wm = ivybridge_update_wm;
    dev_priv->display.update_sprite_wm = sandybridge_update_sprite_wm;
   } else {
    DRM_DEBUG_KMS("Failed to read display plane latency. "
           "Disable CxSR\n");
    dev_priv->display.update_wm = ((void*)0);
   }
   dev_priv->display.init_clock_gating = ivybridge_init_clock_gating;
  } else if (IS_HASWELL(dev)) {
   if (SNB_READ_WM0_LATENCY()) {
    dev_priv->display.update_wm = sandybridge_update_wm;
    dev_priv->display.update_sprite_wm = sandybridge_update_sprite_wm;
    dev_priv->display.update_linetime_wm = haswell_update_linetime_wm;
   } else {
    DRM_DEBUG_KMS("Failed to read display plane latency. "
           "Disable CxSR\n");
    dev_priv->display.update_wm = ((void*)0);
   }
   dev_priv->display.init_clock_gating = haswell_init_clock_gating;
  } else
   dev_priv->display.update_wm = ((void*)0);
 } else if (IS_VALLEYVIEW(dev)) {
  dev_priv->display.update_wm = valleyview_update_wm;
  dev_priv->display.init_clock_gating =
   valleyview_init_clock_gating;
 } else if (IS_PINEVIEW(dev)) {
  if (!intel_get_cxsr_latency(IS_PINEVIEW_G(dev),
         dev_priv->is_ddr3,
         dev_priv->fsb_freq,
         dev_priv->mem_freq)) {
   DRM_INFO("failed to find known CxSR latency "
     "(found ddr%s fsb freq %d, mem freq %d), "
     "disabling CxSR\n",
     (dev_priv->is_ddr3 == 1) ? "3" : "2",
     dev_priv->fsb_freq, dev_priv->mem_freq);

   pineview_disable_cxsr(dev);
   dev_priv->display.update_wm = ((void*)0);
  } else
   dev_priv->display.update_wm = pineview_update_wm;
  dev_priv->display.init_clock_gating = gen3_init_clock_gating;
 } else if (IS_G4X(dev)) {
  dev_priv->display.update_wm = g4x_update_wm;
  dev_priv->display.init_clock_gating = g4x_init_clock_gating;
 } else if (IS_GEN4(dev)) {
  dev_priv->display.update_wm = i965_update_wm;
  if (IS_CRESTLINE(dev))
   dev_priv->display.init_clock_gating = crestline_init_clock_gating;
  else if (IS_BROADWATER(dev))
   dev_priv->display.init_clock_gating = broadwater_init_clock_gating;
 } else if (IS_GEN3(dev)) {
  dev_priv->display.update_wm = i9xx_update_wm;
  dev_priv->display.get_fifo_size = i9xx_get_fifo_size;
  dev_priv->display.init_clock_gating = gen3_init_clock_gating;
 } else if (IS_I865G(dev)) {
  dev_priv->display.update_wm = i830_update_wm;
  dev_priv->display.init_clock_gating = i85x_init_clock_gating;
  dev_priv->display.get_fifo_size = i830_get_fifo_size;
 } else if (IS_I85X(dev)) {
  dev_priv->display.update_wm = i9xx_update_wm;
  dev_priv->display.get_fifo_size = i85x_get_fifo_size;
  dev_priv->display.init_clock_gating = i85x_init_clock_gating;
 } else {
  dev_priv->display.update_wm = i830_update_wm;
  dev_priv->display.init_clock_gating = i830_init_clock_gating;
  if (IS_845G(dev))
   dev_priv->display.get_fifo_size = i845_get_fifo_size;
  else
   dev_priv->display.get_fifo_size = i830_get_fifo_size;
 }
}
