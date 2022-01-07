
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_unpin_work {int pending_flip_obj; int work; struct drm_i915_gem_object* old_fb_obj; scalar_t__ event; int pending; } ;
struct intel_crtc {int plane; int pipe; struct intel_unpin_work* unpin_work; } ;
struct drm_i915_gem_object {int dummy; } ;
struct drm_device {int event_lock; TYPE_1__* dev_private; } ;
struct drm_crtc {int dummy; } ;
struct TYPE_2__ {int wq; int pending_flip_queue; } ;
typedef TYPE_1__ drm_i915_private_t ;


 scalar_t__ INTEL_FLIP_COMPLETE ;
 scalar_t__ atomic_read (int *) ;
 int drm_send_vblank_event (struct drm_device*,int ,scalar_t__) ;
 int drm_vblank_put (struct drm_device*,int ) ;
 int queue_work (int ,int *) ;
 int smp_rmb () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct intel_crtc* to_intel_crtc (struct drm_crtc*) ;
 int trace_i915_flip_complete (int ,int ) ;
 int wake_up_all (int *) ;

__attribute__((used)) static void do_intel_finish_page_flip(struct drm_device *dev,
          struct drm_crtc *crtc)
{
 drm_i915_private_t *dev_priv = dev->dev_private;
 struct intel_crtc *intel_crtc = to_intel_crtc(crtc);
 struct intel_unpin_work *work;
 struct drm_i915_gem_object *obj;
 unsigned long flags;


 if (intel_crtc == ((void*)0))
  return;

 spin_lock_irqsave(&dev->event_lock, flags);
 work = intel_crtc->unpin_work;


 smp_rmb();

 if (work == ((void*)0) || atomic_read(&work->pending) < INTEL_FLIP_COMPLETE) {
  spin_unlock_irqrestore(&dev->event_lock, flags);
  return;
 }


 smp_rmb();

 intel_crtc->unpin_work = ((void*)0);

 if (work->event)
  drm_send_vblank_event(dev, intel_crtc->pipe, work->event);

 drm_vblank_put(dev, intel_crtc->pipe);

 spin_unlock_irqrestore(&dev->event_lock, flags);

 obj = work->old_fb_obj;

 wake_up_all(&dev_priv->pending_flip_queue);

 queue_work(dev_priv->wq, &work->work);

 trace_i915_flip_complete(intel_crtc->plane, work->pending_flip_obj);
}
