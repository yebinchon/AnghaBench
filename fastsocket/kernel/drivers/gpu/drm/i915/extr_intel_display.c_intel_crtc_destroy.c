
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_unpin_work {int work; struct intel_unpin_work* unpin_work; } ;
struct intel_crtc {int work; struct intel_crtc* unpin_work; } ;
struct drm_device {int event_lock; } ;
struct drm_crtc {struct drm_device* dev; } ;


 int cancel_work_sync (int *) ;
 int drm_crtc_cleanup (struct drm_crtc*) ;
 int kfree (struct intel_unpin_work*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct intel_unpin_work* to_intel_crtc (struct drm_crtc*) ;

__attribute__((used)) static void intel_crtc_destroy(struct drm_crtc *crtc)
{
 struct intel_crtc *intel_crtc = to_intel_crtc(crtc);
 struct drm_device *dev = crtc->dev;
 struct intel_unpin_work *work;
 unsigned long flags;

 spin_lock_irqsave(&dev->event_lock, flags);
 work = intel_crtc->unpin_work;
 intel_crtc->unpin_work = ((void*)0);
 spin_unlock_irqrestore(&dev->event_lock, flags);

 if (work) {
  cancel_work_sync(&work->work);
  kfree(work);
 }

 drm_crtc_cleanup(crtc);

 kfree(intel_crtc);
}
