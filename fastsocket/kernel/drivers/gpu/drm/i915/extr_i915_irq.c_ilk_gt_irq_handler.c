
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int * ring; } ;
struct drm_device {int dummy; } ;


 int GT_BSD_USER_INTERRUPT ;
 int GT_PIPE_NOTIFY ;
 int GT_USER_INTERRUPT ;
 size_t RCS ;
 size_t VCS ;
 int notify_ring (struct drm_device*,int *) ;

__attribute__((used)) static void ilk_gt_irq_handler(struct drm_device *dev,
          struct drm_i915_private *dev_priv,
          u32 gt_iir)
{
 if (gt_iir & (GT_USER_INTERRUPT | GT_PIPE_NOTIFY))
  notify_ring(dev, &dev_priv->ring[RCS]);
 if (gt_iir & GT_BSD_USER_INTERRUPT)
  notify_ring(dev, &dev_priv->ring[VCS]);
}
