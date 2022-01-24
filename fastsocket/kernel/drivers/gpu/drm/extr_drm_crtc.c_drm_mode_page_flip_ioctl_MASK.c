#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {void (* destroy ) (struct drm_pending_event*) ;struct drm_file* file_priv; TYPE_2__* event; } ;
struct TYPE_7__ {int length; int /*<<< orphan*/  type; } ;
struct TYPE_8__ {TYPE_2__ base; int /*<<< orphan*/  user_data; } ;
struct drm_pending_vblank_event {TYPE_4__ base; TYPE_3__ event; } ;
struct drm_mode_object {int dummy; } ;
struct drm_mode_crtc_page_flip {int flags; scalar_t__ reserved; int /*<<< orphan*/  user_data; int /*<<< orphan*/  fb_id; int /*<<< orphan*/  crtc_id; } ;
struct drm_framebuffer {int width; int height; } ;
struct drm_file {int event_space; } ;
struct drm_device {int /*<<< orphan*/  event_lock; } ;
struct TYPE_6__ {int hdisplay; int vdisplay; } ;
struct drm_crtc {int x; int y; int /*<<< orphan*/  mutex; struct drm_framebuffer* fb; TYPE_5__* funcs; scalar_t__ invert_dimensions; TYPE_1__ mode; } ;
struct TYPE_10__ {int /*<<< orphan*/  (* page_flip ) (struct drm_crtc*,struct drm_framebuffer*,struct drm_pending_vblank_event*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int,int,int,int,int,char*) ; 
 int /*<<< orphan*/  DRM_EVENT_FLIP_COMPLETE ; 
 int /*<<< orphan*/  DRM_MODE_OBJECT_CRTC ; 
 int DRM_MODE_PAGE_FLIP_EVENT ; 
 int DRM_MODE_PAGE_FLIP_FLAGS ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int ENOSPC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct drm_framebuffer* FUNC2 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_framebuffer*) ; 
 struct drm_mode_object* FUNC4 (struct drm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_pending_vblank_event*) ; 
 struct drm_pending_vblank_event* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct drm_crtc* FUNC9 (struct drm_mode_object*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (struct drm_crtc*,struct drm_framebuffer*,struct drm_pending_vblank_event*) ; 
 int /*<<< orphan*/  FUNC13 (int,int) ; 

int FUNC14(struct drm_device *dev,
			     void *data, struct drm_file *file_priv)
{
	struct drm_mode_crtc_page_flip *page_flip = data;
	struct drm_mode_object *obj;
	struct drm_crtc *crtc;
	struct drm_framebuffer *fb = NULL, *old_fb = NULL;
	struct drm_pending_vblank_event *e = NULL;
	unsigned long flags;
	int hdisplay, vdisplay;
	int ret = -EINVAL;

	if (page_flip->flags & ~DRM_MODE_PAGE_FLIP_FLAGS ||
	    page_flip->reserved != 0)
		return -EINVAL;

	obj = FUNC4(dev, page_flip->crtc_id, DRM_MODE_OBJECT_CRTC);
	if (!obj)
		return -EINVAL;
	crtc = FUNC9(obj);

	FUNC7(&crtc->mutex);
	if (crtc->fb == NULL) {
		/* The framebuffer is currently unbound, presumably
		 * due to a hotplug event, that userspace has not
		 * yet discovered.
		 */
		ret = -EBUSY;
		goto out;
	}

	if (crtc->funcs->page_flip == NULL)
		goto out;

	fb = FUNC2(dev, page_flip->fb_id);
	if (!fb)
		goto out;

	hdisplay = crtc->mode.hdisplay;
	vdisplay = crtc->mode.vdisplay;

	if (crtc->invert_dimensions)
		FUNC13(hdisplay, vdisplay);

	if (hdisplay > fb->width ||
	    vdisplay > fb->height ||
	    crtc->x > fb->width - hdisplay ||
	    crtc->y > fb->height - vdisplay) {
		FUNC0("Invalid fb size %ux%u for CRTC viewport %ux%u+%d+%d%s.\n",
			      fb->width, fb->height, hdisplay, vdisplay, crtc->x, crtc->y,
			      crtc->invert_dimensions ? " (inverted)" : "");
		ret = -ENOSPC;
		goto out;
	}

	if (page_flip->flags & DRM_MODE_PAGE_FLIP_EVENT) {
		ret = -ENOMEM;
		FUNC10(&dev->event_lock, flags);
		if (file_priv->event_space < sizeof e->event) {
			FUNC11(&dev->event_lock, flags);
			goto out;
		}
		file_priv->event_space -= sizeof e->event;
		FUNC11(&dev->event_lock, flags);

		e = FUNC6(sizeof *e, GFP_KERNEL);
		if (e == NULL) {
			FUNC10(&dev->event_lock, flags);
			file_priv->event_space += sizeof e->event;
			FUNC11(&dev->event_lock, flags);
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
			FUNC10(&dev->event_lock, flags);
			file_priv->event_space += sizeof e->event;
			FUNC11(&dev->event_lock, flags);
			FUNC5(e);
		}
		/* Keep the old fb, don't unref it. */
		old_fb = NULL;
	} else {
		/*
		 * Warn if the driver hasn't properly updated the crtc->fb
		 * field to reflect that the new framebuffer is now used.
		 * Failing to do so will screw with the reference counting
		 * on framebuffers.
		 */
		FUNC1(crtc->fb != fb);
		/* Unref only the old framebuffer. */
		fb = NULL;
	}

out:
	if (fb)
		FUNC3(fb);
	if (old_fb)
		FUNC3(old_fb);
	FUNC8(&crtc->mutex);

	return ret;
}