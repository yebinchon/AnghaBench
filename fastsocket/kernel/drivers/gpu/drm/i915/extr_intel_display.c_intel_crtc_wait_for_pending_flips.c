
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int pending_flip_queue; } ;
struct drm_device {int struct_mutex; struct drm_i915_private* dev_private; } ;
struct drm_crtc {int * fb; struct drm_device* dev; } ;


 int WARN_ON (int ) ;
 int intel_crtc_has_pending_flip (struct drm_crtc*) ;
 int intel_finish_fb (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wait_event (int ,int) ;
 int waitqueue_active (int *) ;

__attribute__((used)) static void intel_crtc_wait_for_pending_flips(struct drm_crtc *crtc)
{
 struct drm_device *dev = crtc->dev;
 struct drm_i915_private *dev_priv = dev->dev_private;

 if (crtc->fb == ((void*)0))
  return;

 WARN_ON(waitqueue_active(&dev_priv->pending_flip_queue));

 wait_event(dev_priv->pending_flip_queue,
     !intel_crtc_has_pending_flip(crtc));

 mutex_lock(&dev->struct_mutex);
 intel_finish_fb(crtc->fb);
 mutex_unlock(&dev->struct_mutex);
}
