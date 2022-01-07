
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct drm_device* dev; } ;
struct intel_crtc {scalar_t__ overlay; TYPE_1__ base; } ;
struct TYPE_4__ {int interruptible; } ;
struct drm_i915_private {TYPE_2__ mm; } ;
struct drm_device {int struct_mutex; struct drm_i915_private* dev_private; } ;


 int intel_overlay_switch_off (scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void intel_crtc_dpms_overlay(struct intel_crtc *intel_crtc, bool enable)
{
 if (!enable && intel_crtc->overlay) {
  struct drm_device *dev = intel_crtc->base.dev;
  struct drm_i915_private *dev_priv = dev->dev_private;

  mutex_lock(&dev->struct_mutex);
  dev_priv->mm.interruptible = 0;
  (void) intel_overlay_switch_off(intel_crtc->overlay);
  dev_priv->mm.interruptible = 1;
  mutex_unlock(&dev->struct_mutex);
 }




}
