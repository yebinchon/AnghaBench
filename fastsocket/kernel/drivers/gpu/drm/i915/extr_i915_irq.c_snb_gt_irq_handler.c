
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int * ring; } ;
struct drm_device {int dummy; } ;


 size_t BCS ;
 int DRM_ERROR (char*,int) ;
 int GEN6_BLITTER_USER_INTERRUPT ;
 int GEN6_BSD_USER_INTERRUPT ;
 int GEN6_RENDER_PIPE_CONTROL_NOTIFY_INTERRUPT ;
 int GEN6_RENDER_USER_INTERRUPT ;
 int GT_GEN6_BLT_CS_ERROR_INTERRUPT ;
 int GT_GEN6_BSD_CS_ERROR_INTERRUPT ;
 int GT_GEN7_L3_PARITY_ERROR_INTERRUPT ;
 int GT_RENDER_CS_ERROR_INTERRUPT ;
 size_t RCS ;
 size_t VCS ;
 int i915_handle_error (struct drm_device*,int) ;
 int ivybridge_handle_parity_error (struct drm_device*) ;
 int notify_ring (struct drm_device*,int *) ;

__attribute__((used)) static void snb_gt_irq_handler(struct drm_device *dev,
          struct drm_i915_private *dev_priv,
          u32 gt_iir)
{

 if (gt_iir & (GEN6_RENDER_USER_INTERRUPT |
        GEN6_RENDER_PIPE_CONTROL_NOTIFY_INTERRUPT))
  notify_ring(dev, &dev_priv->ring[RCS]);
 if (gt_iir & GEN6_BSD_USER_INTERRUPT)
  notify_ring(dev, &dev_priv->ring[VCS]);
 if (gt_iir & GEN6_BLITTER_USER_INTERRUPT)
  notify_ring(dev, &dev_priv->ring[BCS]);

 if (gt_iir & (GT_GEN6_BLT_CS_ERROR_INTERRUPT |
        GT_GEN6_BSD_CS_ERROR_INTERRUPT |
        GT_RENDER_CS_ERROR_INTERRUPT)) {
  DRM_ERROR("GT error interrupt 0x%08x\n", gt_iir);
  i915_handle_error(dev, 0);
 }

 if (gt_iir & GT_GEN7_L3_PARITY_ERROR_INTERRUPT)
  ivybridge_handle_parity_error(dev);
}
