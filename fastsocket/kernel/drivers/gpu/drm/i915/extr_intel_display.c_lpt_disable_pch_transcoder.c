
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;


 int DRM_ERROR (char*) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int TRANS_CHICKEN2_TIMING_OVERRIDE ;
 int TRANS_ENABLE ;
 int TRANS_STATE_ENABLE ;
 int _TRANSACONF ;
 int _TRANSA_CHICKEN2 ;
 scalar_t__ wait_for (int,int) ;

__attribute__((used)) static void lpt_disable_pch_transcoder(struct drm_i915_private *dev_priv)
{
 u32 val;

 val = I915_READ(_TRANSACONF);
 val &= ~TRANS_ENABLE;
 I915_WRITE(_TRANSACONF, val);

 if (wait_for((I915_READ(_TRANSACONF) & TRANS_STATE_ENABLE) == 0, 50))
  DRM_ERROR("Failed to disable PCH transcoder\n");


 val = I915_READ(_TRANSA_CHICKEN2);
 val &= ~TRANS_CHICKEN2_TIMING_OVERRIDE;
 I915_WRITE(_TRANSA_CHICKEN2, val);
}
