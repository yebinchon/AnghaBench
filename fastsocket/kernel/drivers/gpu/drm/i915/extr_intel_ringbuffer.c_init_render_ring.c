
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_ring_buffer {int itlb_before_ctx_switch; struct drm_device* dev; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct TYPE_2__ {int gen; } ;


 int ASYNC_FLIP_PERF_DISABLE ;
 int CACHE_MODE_0 ;
 int CM0_STC_EVICT_DISABLE_LRA_SNB ;
 int GEN6_RENDER_L3_PARITY_ERROR ;
 int GFX_MODE ;
 int GFX_MODE_GEN7 ;
 int GFX_REPLAY_MODE ;
 int GFX_TLB_INVALIDATE_ALWAYS ;
 scalar_t__ HAS_L3_GPU_CACHE (struct drm_device*) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int I915_WRITE_IMR (struct intel_ring_buffer*,int ) ;
 int INSTPM ;
 int INSTPM_FORCE_ORDERING ;
 TYPE_1__* INTEL_INFO (struct drm_device*) ;
 scalar_t__ IS_GEN6 (struct drm_device*) ;
 scalar_t__ IS_GEN7 (struct drm_device*) ;
 int MI_MODE ;
 int VS_TIMER_DISPATCH ;
 int _MASKED_BIT_DISABLE (int) ;
 int _MASKED_BIT_ENABLE (int) ;
 int init_pipe_control (struct intel_ring_buffer*) ;
 int init_ring_common (struct intel_ring_buffer*) ;

__attribute__((used)) static int init_render_ring(struct intel_ring_buffer *ring)
{
 struct drm_device *dev = ring->dev;
 struct drm_i915_private *dev_priv = dev->dev_private;
 int ret = init_ring_common(ring);

 if (INTEL_INFO(dev)->gen > 3)
  I915_WRITE(MI_MODE, _MASKED_BIT_ENABLE(VS_TIMER_DISPATCH));





 if (INTEL_INFO(dev)->gen >= 6)
  I915_WRITE(MI_MODE, _MASKED_BIT_ENABLE(ASYNC_FLIP_PERF_DISABLE));


 if (INTEL_INFO(dev)->gen == 6)
  I915_WRITE(GFX_MODE,
      _MASKED_BIT_ENABLE(GFX_TLB_INVALIDATE_ALWAYS));

 if (IS_GEN7(dev))
  I915_WRITE(GFX_MODE_GEN7,
      _MASKED_BIT_DISABLE(GFX_TLB_INVALIDATE_ALWAYS) |
      _MASKED_BIT_ENABLE(GFX_REPLAY_MODE));

 if (INTEL_INFO(dev)->gen >= 5) {
  ret = init_pipe_control(ring);
  if (ret)
   return ret;
 }

 if (IS_GEN6(dev)) {





  I915_WRITE(CACHE_MODE_0,
      _MASKED_BIT_DISABLE(CM0_STC_EVICT_DISABLE_LRA_SNB));





  ring->itlb_before_ctx_switch =
   !!(I915_READ(GFX_MODE) & GFX_TLB_INVALIDATE_ALWAYS);
 }

 if (INTEL_INFO(dev)->gen >= 6)
  I915_WRITE(INSTPM, _MASKED_BIT_ENABLE(INSTPM_FORCE_ORDERING));

 if (HAS_L3_GPU_CACHE(dev))
  I915_WRITE_IMR(ring, ~GEN6_RENDER_L3_PARITY_ERROR);

 return ret;
}
