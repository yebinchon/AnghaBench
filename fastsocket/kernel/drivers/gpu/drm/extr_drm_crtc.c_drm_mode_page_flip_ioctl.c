
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {void (* destroy ) (struct drm_pending_event*) ;struct drm_file* file_priv; TYPE_2__* event; } ;
struct TYPE_7__ {int length; int type; } ;
struct TYPE_8__ {TYPE_2__ base; int user_data; } ;
struct drm_pending_vblank_event {TYPE_4__ base; TYPE_3__ event; } ;
struct drm_mode_object {int dummy; } ;
struct drm_mode_crtc_page_flip {int flags; scalar_t__ reserved; int user_data; int fb_id; int crtc_id; } ;
struct drm_framebuffer {int width; int height; } ;
struct drm_file {int event_space; } ;
struct drm_device {int event_lock; } ;
struct TYPE_6__ {int hdisplay; int vdisplay; } ;
struct drm_crtc {int x; int y; int mutex; struct drm_framebuffer* fb; TYPE_5__* funcs; scalar_t__ invert_dimensions; TYPE_1__ mode; } ;
struct TYPE_10__ {int (* page_flip ) (struct drm_crtc*,struct drm_framebuffer*,struct drm_pending_vblank_event*) ;} ;


 int DRM_DEBUG_KMS (char*,int,int,int,int,int,int,char*) ;
 int DRM_EVENT_FLIP_COMPLETE ;
 int DRM_MODE_OBJECT_CRTC ;
 int DRM_MODE_PAGE_FLIP_EVENT ;
 int DRM_MODE_PAGE_FLIP_FLAGS ;
 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 int ENOSPC ;
 int GFP_KERNEL ;
 int WARN_ON (int) ;
 struct drm_framebuffer* drm_framebuffer_lookup (struct drm_device*,int ) ;
 int drm_framebuffer_unreference (struct drm_framebuffer*) ;
 struct drm_mode_object* drm_mode_object_find (struct drm_device*,int ,int ) ;
 int kfree (struct drm_pending_vblank_event*) ;
 struct drm_pending_vblank_event* kzalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct drm_crtc* obj_to_crtc (struct drm_mode_object*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct drm_crtc*,struct drm_framebuffer*,struct drm_pending_vblank_event*) ;
 int swap (int,int) ;

int drm_mode_page_flip_ioctl(struct drm_device *dev,
        void *data, struct drm_file *file_priv)
{
 struct drm_mode_crtc_page_flip *page_flip = data;
 struct drm_mode_object *obj;
 struct drm_crtc *crtc;
 struct drm_framebuffer *fb = ((void*)0), *old_fb = ((void*)0);
 struct drm_pending_vblank_event *e = ((void*)0);
 unsigned long flags;
 int hdisplay, vdisplay;
 int ret = -EINVAL;

 if (page_flip->flags & ~DRM_MODE_PAGE_FLIP_FLAGS ||
     page_flip->reserved != 0)
  return -EINVAL;

 obj = drm_mode_object_find(dev, page_flip->crtc_id, DRM_MODE_OBJECT_CRTC);
 if (!obj)
  return -EINVAL;
 crtc = obj_to_crtc(obj);

 mutex_lock(&crtc->mutex);
 if (crtc->fb == ((void*)0)) {




  ret = -EBUSY;
  goto out;
 }

 if (crtc->funcs->page_flip == ((void*)0))
  goto out;

 fb = drm_framebuffer_lookup(dev, page_flip->fb_id);
 if (!fb)
  goto out;

 hdisplay = crtc->mode.hdisplay;
 vdisplay = crtc->mode.vdisplay;

 if (crtc->invert_dimensions)
  swap(hdisplay, vdisplay);

 if (hdisplay > fb->width ||
     vdisplay > fb->height ||
     crtc->x > fb->width - hdisplay ||
     crtc->y > fb->height - vdisplay) {
  DRM_DEBUG_KMS("Invalid fb size %ux%u for CRTC viewport %ux%u+%d+%d%s.\n",
         fb->width, fb->height, hdisplay, vdisplay, crtc->x, crtc->y,
         crtc->invert_dimensions ? " (inverted)" : "");
  ret = -ENOSPC;
  goto out;
 }

 if (page_flip->flags & DRM_MODE_PAGE_FLIP_EVENT) {
  ret = -ENOMEM;
  spin_lock_irqsave(&dev->event_lock, flags);
  if (file_priv->event_space < sizeof e->event) {
   spin_unlock_irqrestore(&dev->event_lock, flags);
   goto out;
  }
  file_priv->event_space -= sizeof e->event;
  spin_unlock_irqrestore(&dev->event_lock, flags);

  e = kzalloc(sizeof *e, GFP_KERNEL);
  if (e == ((void*)0)) {
   spin_lock_irqsave(&dev->event_lock, flags);
   file_priv->event_space += sizeof e->event;
   spin_unlock_irqrestore(&dev->event_lock, flags);
   goto out;
  }

  e->event.base.type = DRM_EVENT_FLIP_COMPLETE;
  e->event.base.length = sizeof e->event;
  e->event.user_data = page_flip->user_data;
  e->base.event = &e->event.base;
  e->base.file_priv = file_priv;
  e->base.destroy =
   (void (*) (struct drm_pending_event *)) kfree;
 }

 old_fb = crtc->fb;
 ret = crtc->funcs->page_flip(crtc, fb, e);
 if (ret) {
  if (page_flip->flags & DRM_MODE_PAGE_FLIP_EVENT) {
   spin_lock_irqsave(&dev->event_lock, flags);
   file_priv->event_space += sizeof e->event;
   spin_unlock_irqrestore(&dev->event_lock, flags);
   kfree(e);
  }

  old_fb = ((void*)0);
 } else {






  WARN_ON(crtc->fb != fb);

  fb = ((void*)0);
 }

out:
 if (fb)
  drm_framebuffer_unreference(fb);
 if (old_fb)
  drm_framebuffer_unreference(old_fb);
 mutex_unlock(&crtc->mutex);

 return ret;
}
