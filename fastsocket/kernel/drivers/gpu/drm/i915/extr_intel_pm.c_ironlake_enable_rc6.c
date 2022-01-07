
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct intel_ring_buffer {int dummy; } ;
struct TYPE_8__ {TYPE_3__* pwrctx; TYPE_1__* renderctx; } ;
struct TYPE_6__ {int interruptible; } ;
struct drm_i915_private {TYPE_4__ ips; TYPE_2__ mm; struct intel_ring_buffer* ring; } ;
struct drm_device {int struct_mutex; struct drm_i915_private* dev_private; } ;
struct TYPE_7__ {int gtt_offset; } ;
struct TYPE_5__ {int gtt_offset; } ;


 int DRM_ERROR (char*) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int MI_FLUSH ;
 int MI_MM_SPACE_GTT ;
 int MI_NOOP ;
 int MI_RESTORE_EXT_STATE_EN ;
 int MI_RESTORE_INHIBIT ;
 int MI_SAVE_EXT_STATE_EN ;
 int MI_SET_CONTEXT ;
 int MI_SUSPEND_FLUSH ;
 int MI_SUSPEND_FLUSH_EN ;
 int PWRCTXA ;
 int PWRCTX_EN ;
 size_t RCS ;
 int RCX_SW_EXIT ;
 int RSTDBYCTL ;
 int WARN_ON (int) ;
 int intel_enable_rc6 (struct drm_device*) ;
 int intel_ring_advance (struct intel_ring_buffer*) ;
 int intel_ring_begin (struct intel_ring_buffer*,int) ;
 int intel_ring_emit (struct intel_ring_buffer*,int) ;
 int intel_ring_idle (struct intel_ring_buffer*) ;
 int ironlake_setup_rc6 (struct drm_device*) ;
 int ironlake_teardown_rc6 (struct drm_device*) ;
 int mutex_is_locked (int *) ;

__attribute__((used)) static void ironlake_enable_rc6(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = dev->dev_private;
 struct intel_ring_buffer *ring = &dev_priv->ring[RCS];
 bool was_interruptible;
 int ret;




 if (!intel_enable_rc6(dev))
  return;

 WARN_ON(!mutex_is_locked(&dev->struct_mutex));

 ret = ironlake_setup_rc6(dev);
 if (ret)
  return;

 was_interruptible = dev_priv->mm.interruptible;
 dev_priv->mm.interruptible = 0;





 ret = intel_ring_begin(ring, 6);
 if (ret) {
  ironlake_teardown_rc6(dev);
  dev_priv->mm.interruptible = was_interruptible;
  return;
 }

 intel_ring_emit(ring, MI_SUSPEND_FLUSH | MI_SUSPEND_FLUSH_EN);
 intel_ring_emit(ring, MI_SET_CONTEXT);
 intel_ring_emit(ring, dev_priv->ips.renderctx->gtt_offset |
   MI_MM_SPACE_GTT |
   MI_SAVE_EXT_STATE_EN |
   MI_RESTORE_EXT_STATE_EN |
   MI_RESTORE_INHIBIT);
 intel_ring_emit(ring, MI_SUSPEND_FLUSH);
 intel_ring_emit(ring, MI_NOOP);
 intel_ring_emit(ring, MI_FLUSH);
 intel_ring_advance(ring);






 ret = intel_ring_idle(ring);
 dev_priv->mm.interruptible = was_interruptible;
 if (ret) {
  DRM_ERROR("failed to enable ironlake power power savings\n");
  ironlake_teardown_rc6(dev);
  return;
 }

 I915_WRITE(PWRCTXA, dev_priv->ips.pwrctx->gtt_offset | PWRCTX_EN);
 I915_WRITE(RSTDBYCTL, I915_READ(RSTDBYCTL) & ~RCX_SW_EXIT);
}
