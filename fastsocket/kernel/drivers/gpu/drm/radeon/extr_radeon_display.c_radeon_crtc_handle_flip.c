
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct timeval {int tv_usec; int tv_sec; } ;
struct radeon_unpin_work {int work; int crtc_id; int rdev; scalar_t__ fence; struct drm_pending_vblank_event* event; int new_crtc_base; } ;
struct TYPE_12__ {struct radeon_crtc** crtcs; } ;
struct radeon_device {TYPE_7__* ddev; TYPE_3__ mode_info; } ;
struct TYPE_10__ {int crtc_vdisplay; } ;
struct TYPE_11__ {TYPE_1__ hwmode; } ;
struct radeon_crtc {int deferred_flip_completion; int crtc_id; struct radeon_unpin_work* unpin_work; TYPE_2__ base; } ;
struct TYPE_15__ {TYPE_5__* file_priv; int link; } ;
struct TYPE_13__ {int tv_usec; int tv_sec; int sequence; } ;
struct drm_pending_vblank_event {TYPE_6__ base; TYPE_4__ event; } ;
struct TYPE_16__ {int event_lock; } ;
struct TYPE_14__ {int event_wait; int event_list; } ;


 int ASIC_IS_AVIVO (struct radeon_device*) ;
 int DRM_SCANOUTPOS_VALID ;
 int drm_vblank_count_and_time (TYPE_7__*,int,struct timeval*) ;
 int drm_vblank_put (TYPE_7__*,int ) ;
 int list_add_tail (int *,int *) ;
 int radeon_fence_signaled (scalar_t__) ;
 int radeon_fence_unref (scalar_t__*) ;
 int radeon_get_crtc_scanoutpos (TYPE_7__*,int,int*,int*) ;
 scalar_t__ radeon_page_flip (struct radeon_device*,int,int ) ;
 int radeon_post_page_flip (int ,int ) ;
 int schedule_work (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up_interruptible (int *) ;

void radeon_crtc_handle_flip(struct radeon_device *rdev, int crtc_id)
{
 struct radeon_crtc *radeon_crtc = rdev->mode_info.crtcs[crtc_id];
 struct radeon_unpin_work *work;
 struct drm_pending_vblank_event *e;
 struct timeval now;
 unsigned long flags;
 u32 update_pending;
 int vpos, hpos;

 spin_lock_irqsave(&rdev->ddev->event_lock, flags);
 work = radeon_crtc->unpin_work;
 if (work == ((void*)0) ||
     (work->fence && !radeon_fence_signaled(work->fence))) {
  spin_unlock_irqrestore(&rdev->ddev->event_lock, flags);
  return;
 }

 if (!radeon_crtc->deferred_flip_completion) {

  update_pending = radeon_page_flip(rdev, crtc_id, work->new_crtc_base);
 } else {




  update_pending = 0;
  radeon_crtc->deferred_flip_completion = 0;
 }




 if (update_pending &&
     (DRM_SCANOUTPOS_VALID & radeon_get_crtc_scanoutpos(rdev->ddev, crtc_id,
              &vpos, &hpos)) &&
     ((vpos >= (99 * rdev->mode_info.crtcs[crtc_id]->base.hwmode.crtc_vdisplay)/100) ||
      (vpos < 0 && !ASIC_IS_AVIVO(rdev)))) {






  update_pending = 0;
 }
 if (update_pending) {





  radeon_crtc->deferred_flip_completion = 1;
  spin_unlock_irqrestore(&rdev->ddev->event_lock, flags);
  return;
 }


 radeon_crtc->unpin_work = ((void*)0);


 if (work->event) {
  e = work->event;
  e->event.sequence = drm_vblank_count_and_time(rdev->ddev, crtc_id, &now);
  e->event.tv_sec = now.tv_sec;
  e->event.tv_usec = now.tv_usec;
  list_add_tail(&e->base.link, &e->base.file_priv->event_list);
  wake_up_interruptible(&e->base.file_priv->event_wait);
 }
 spin_unlock_irqrestore(&rdev->ddev->event_lock, flags);

 drm_vblank_put(rdev->ddev, radeon_crtc->crtc_id);
 radeon_fence_unref(&work->fence);
 radeon_post_page_flip(work->rdev, work->crtc_id);
 schedule_work(&work->work);
}
