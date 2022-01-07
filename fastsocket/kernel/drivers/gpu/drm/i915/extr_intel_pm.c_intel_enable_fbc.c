
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_fbc_work {unsigned long interval; int work; int fb; struct drm_crtc* crtc; } ;
struct TYPE_2__ {int (* enable_fbc ) (struct drm_crtc*,unsigned long) ;} ;
struct drm_i915_private {struct intel_fbc_work* fbc_work; TYPE_1__ display; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct drm_crtc {int fb; struct drm_device* dev; } ;


 int DRM_DEBUG_KMS (char*) ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int intel_cancel_fbc_work (struct drm_i915_private*) ;
 int intel_fbc_work_fn ;
 struct intel_fbc_work* kzalloc (int,int ) ;
 int msecs_to_jiffies (int) ;
 int schedule_delayed_work (int *,int ) ;
 int stub1 (struct drm_crtc*,unsigned long) ;

void intel_enable_fbc(struct drm_crtc *crtc, unsigned long interval)
{
 struct intel_fbc_work *work;
 struct drm_device *dev = crtc->dev;
 struct drm_i915_private *dev_priv = dev->dev_private;

 if (!dev_priv->display.enable_fbc)
  return;

 intel_cancel_fbc_work(dev_priv);

 work = kzalloc(sizeof *work, GFP_KERNEL);
 if (work == ((void*)0)) {
  dev_priv->display.enable_fbc(crtc, interval);
  return;
 }

 work->crtc = crtc;
 work->fb = crtc->fb;
 work->interval = interval;
 INIT_DELAYED_WORK(&work->work, intel_fbc_work_fn);

 dev_priv->fbc_work = work;

 DRM_DEBUG_KMS("scheduling delayed FBC enable\n");
 schedule_delayed_work(&work->work, msecs_to_jiffies(50));
}
