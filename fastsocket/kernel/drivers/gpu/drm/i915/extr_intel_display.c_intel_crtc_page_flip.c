
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct intel_unpin_work {int enable_stall_check; struct drm_i915_gem_object* old_fb_obj; struct drm_i915_gem_object* pending_flip_obj; int work; struct drm_crtc* crtc; struct drm_pending_vblank_event* event; } ;
struct intel_crtc {int reset_counter; int pipe; struct intel_unpin_work* unpin_work; int unpin_work_count; int plane; } ;
struct drm_pending_vblank_event {int dummy; } ;
struct TYPE_6__ {int (* queue_flip ) (struct drm_device*,struct drm_crtc*,struct drm_framebuffer*,struct drm_i915_gem_object*) ;} ;
struct TYPE_5__ {int reset_counter; } ;
struct drm_i915_private {TYPE_2__ display; TYPE_1__ gpu_error; int wq; } ;
struct drm_i915_gem_object {int base; } ;
struct drm_framebuffer {scalar_t__ pixel_format; scalar_t__* offsets; scalar_t__* pitches; } ;
struct drm_device {int event_lock; int struct_mutex; struct drm_i915_private* dev_private; } ;
struct drm_crtc {struct drm_framebuffer* fb; struct drm_device* dev; } ;
struct TYPE_8__ {int gen; } ;
struct TYPE_7__ {struct drm_i915_gem_object* obj; } ;


 int DRM_DEBUG_DRIVER (char*) ;
 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 TYPE_4__* INTEL_INFO (struct drm_device*) ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int drm_gem_object_reference (int *) ;
 int drm_gem_object_unreference (int *) ;
 int drm_vblank_get (struct drm_device*,int ) ;
 int drm_vblank_put (struct drm_device*,int ) ;
 int flush_workqueue (int ) ;
 int i915_mutex_lock_interruptible (struct drm_device*) ;
 int intel_disable_fbc (struct drm_device*) ;
 int intel_mark_fb_busy (struct drm_i915_gem_object*) ;
 int intel_unpin_work_fn ;
 int kfree (struct intel_unpin_work*) ;
 struct intel_unpin_work* kzalloc (int,int ) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct drm_device*,struct drm_crtc*,struct drm_framebuffer*,struct drm_i915_gem_object*) ;
 struct intel_crtc* to_intel_crtc (struct drm_crtc*) ;
 TYPE_3__* to_intel_framebuffer (struct drm_framebuffer*) ;
 int trace_i915_flip_request (int ,struct drm_i915_gem_object*) ;

__attribute__((used)) static int intel_crtc_page_flip(struct drm_crtc *crtc,
    struct drm_framebuffer *fb,
    struct drm_pending_vblank_event *event)
{
 struct drm_device *dev = crtc->dev;
 struct drm_i915_private *dev_priv = dev->dev_private;
 struct drm_framebuffer *old_fb = crtc->fb;
 struct drm_i915_gem_object *obj = to_intel_framebuffer(fb)->obj;
 struct intel_crtc *intel_crtc = to_intel_crtc(crtc);
 struct intel_unpin_work *work;
 unsigned long flags;
 int ret;


 if (fb->pixel_format != crtc->fb->pixel_format)
  return -EINVAL;





 if (INTEL_INFO(dev)->gen > 3 &&
     (fb->offsets[0] != crtc->fb->offsets[0] ||
      fb->pitches[0] != crtc->fb->pitches[0]))
  return -EINVAL;

 work = kzalloc(sizeof *work, GFP_KERNEL);
 if (work == ((void*)0))
  return -ENOMEM;

 work->event = event;
 work->crtc = crtc;
 work->old_fb_obj = to_intel_framebuffer(old_fb)->obj;
 INIT_WORK(&work->work, intel_unpin_work_fn);

 ret = drm_vblank_get(dev, intel_crtc->pipe);
 if (ret)
  goto free_work;


 spin_lock_irqsave(&dev->event_lock, flags);
 if (intel_crtc->unpin_work) {
  spin_unlock_irqrestore(&dev->event_lock, flags);
  kfree(work);
  drm_vblank_put(dev, intel_crtc->pipe);

  DRM_DEBUG_DRIVER("flip queue: crtc already busy\n");
  return -EBUSY;
 }
 intel_crtc->unpin_work = work;
 spin_unlock_irqrestore(&dev->event_lock, flags);

 if (atomic_read(&intel_crtc->unpin_work_count) >= 2)
  flush_workqueue(dev_priv->wq);

 ret = i915_mutex_lock_interruptible(dev);
 if (ret)
  goto cleanup;


 drm_gem_object_reference(&work->old_fb_obj->base);
 drm_gem_object_reference(&obj->base);

 crtc->fb = fb;

 work->pending_flip_obj = obj;

 work->enable_stall_check = 1;

 atomic_inc(&intel_crtc->unpin_work_count);
 intel_crtc->reset_counter = atomic_read(&dev_priv->gpu_error.reset_counter);

 ret = dev_priv->display.queue_flip(dev, crtc, fb, obj);
 if (ret)
  goto cleanup_pending;

 intel_disable_fbc(dev);
 intel_mark_fb_busy(obj);
 mutex_unlock(&dev->struct_mutex);

 trace_i915_flip_request(intel_crtc->plane, obj);

 return 0;

cleanup_pending:
 atomic_dec(&intel_crtc->unpin_work_count);
 crtc->fb = old_fb;
 drm_gem_object_unreference(&work->old_fb_obj->base);
 drm_gem_object_unreference(&obj->base);
 mutex_unlock(&dev->struct_mutex);

cleanup:
 spin_lock_irqsave(&dev->event_lock, flags);
 intel_crtc->unpin_work = ((void*)0);
 spin_unlock_irqrestore(&dev->event_lock, flags);

 drm_vblank_put(dev, intel_crtc->pipe);
free_work:
 kfree(work);

 return ret;
}
