
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_crtc {TYPE_1__* unpin_work; } ;
struct drm_device {int event_lock; TYPE_2__* dev_private; } ;
struct TYPE_4__ {int * plane_to_crtc_mapping; } ;
typedef TYPE_2__ drm_i915_private_t ;
struct TYPE_3__ {int pending; } ;


 int atomic_inc_not_zero (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct intel_crtc* to_intel_crtc (int ) ;

void intel_prepare_page_flip(struct drm_device *dev, int plane)
{
 drm_i915_private_t *dev_priv = dev->dev_private;
 struct intel_crtc *intel_crtc =
  to_intel_crtc(dev_priv->plane_to_crtc_mapping[plane]);
 unsigned long flags;





 spin_lock_irqsave(&dev->event_lock, flags);
 if (intel_crtc->unpin_work)
  atomic_inc_not_zero(&intel_crtc->unpin_work->pending);
 spin_unlock_irqrestore(&dev->event_lock, flags);
}
