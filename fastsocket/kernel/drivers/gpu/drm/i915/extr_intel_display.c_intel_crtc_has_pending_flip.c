
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_crtc {scalar_t__ reset_counter; int * unpin_work; } ;
struct TYPE_2__ {int reset_counter; } ;
struct drm_i915_private {TYPE_1__ gpu_error; } ;
struct drm_device {int event_lock; struct drm_i915_private* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;


 scalar_t__ atomic_read (int *) ;
 scalar_t__ i915_reset_in_progress (TYPE_1__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct intel_crtc* to_intel_crtc (struct drm_crtc*) ;

__attribute__((used)) static bool intel_crtc_has_pending_flip(struct drm_crtc *crtc)
{
 struct drm_device *dev = crtc->dev;
 struct drm_i915_private *dev_priv = dev->dev_private;
 struct intel_crtc *intel_crtc = to_intel_crtc(crtc);
 unsigned long flags;
 bool pending;

 if (i915_reset_in_progress(&dev_priv->gpu_error) ||
     intel_crtc->reset_counter != atomic_read(&dev_priv->gpu_error.reset_counter))
  return 0;

 spin_lock_irqsave(&dev->event_lock, flags);
 pending = to_intel_crtc(crtc)->unpin_work != ((void*)0);
 spin_unlock_irqrestore(&dev->event_lock, flags);

 return pending;
}
