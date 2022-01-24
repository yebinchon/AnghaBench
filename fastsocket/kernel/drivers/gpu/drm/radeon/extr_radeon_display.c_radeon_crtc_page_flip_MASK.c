#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int u32 ;
struct radeon_unpin_work {int new_crtc_base; int /*<<< orphan*/  fence; struct radeon_bo* old_rbo; int /*<<< orphan*/  work; int /*<<< orphan*/  crtc_id; struct radeon_device* rdev; struct drm_pending_vblank_event* event; } ;
struct radeon_framebuffer {struct drm_gem_object* obj; } ;
struct radeon_device {int dummy; } ;
struct radeon_crtc {struct radeon_unpin_work* unpin_work; int /*<<< orphan*/  crtc_id; scalar_t__ legacy_display_base_addr; scalar_t__ deferred_flip_completion; } ;
struct TYPE_4__ {TYPE_1__* bdev; scalar_t__ sync_obj; } ;
struct radeon_bo {TYPE_2__ tbo; } ;
struct drm_pending_vblank_event {int dummy; } ;
struct drm_gem_object {int dummy; } ;
struct drm_framebuffer {int* pitches; int bits_per_pixel; } ;
struct drm_device {int /*<<< orphan*/  event_lock; struct radeon_device* dev_private; } ;
struct drm_crtc {int y; int x; struct drm_framebuffer* fb; struct drm_device* dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  fence_lock; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct radeon_device*) ; 
 scalar_t__ FUNC1 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RADEON_GEM_DOMAIN_VRAM ; 
 int RADEON_TILING_MACRO ; 
 int /*<<< orphan*/  FUNC5 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_gem_object*) ; 
 int FUNC7 (struct drm_device*,int /*<<< orphan*/ ) ; 
 struct radeon_bo* FUNC8 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC9 (struct radeon_unpin_work*) ; 
 struct radeon_unpin_work* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct radeon_bo*,int*,int /*<<< orphan*/ *) ; 
 int FUNC12 (struct radeon_bo*,int /*<<< orphan*/ ,int,int*) ; 
 int FUNC13 (struct radeon_bo*,int) ; 
 scalar_t__ FUNC14 (struct radeon_bo*) ; 
 int /*<<< orphan*/  FUNC15 (struct radeon_bo*) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct radeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  radeon_unpin_work_func ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,unsigned long) ; 
 struct radeon_crtc* FUNC23 (struct drm_crtc*) ; 
 struct radeon_framebuffer* FUNC24 (struct drm_framebuffer*) ; 
 scalar_t__ FUNC25 (int) ; 

__attribute__((used)) static int FUNC26(struct drm_crtc *crtc,
				 struct drm_framebuffer *fb,
				 struct drm_pending_vblank_event *event)
{
	struct drm_device *dev = crtc->dev;
	struct radeon_device *rdev = dev->dev_private;
	struct radeon_crtc *radeon_crtc = FUNC23(crtc);
	struct radeon_framebuffer *old_radeon_fb;
	struct radeon_framebuffer *new_radeon_fb;
	struct drm_gem_object *obj;
	struct radeon_bo *rbo;
	struct radeon_unpin_work *work;
	unsigned long flags;
	u32 tiling_flags, pitch_pixels;
	u64 base;
	int r;

	work = FUNC10(sizeof *work, GFP_KERNEL);
	if (work == NULL)
		return -ENOMEM;

	work->event = event;
	work->rdev = rdev;
	work->crtc_id = radeon_crtc->crtc_id;
	old_radeon_fb = FUNC24(crtc->fb);
	new_radeon_fb = FUNC24(fb);
	/* schedule unpin of the old buffer */
	obj = old_radeon_fb->obj;
	/* take a reference to the old object */
	FUNC5(obj);
	rbo = FUNC8(obj);
	work->old_rbo = rbo;
	obj = new_radeon_fb->obj;
	rbo = FUNC8(obj);

	FUNC19(&rbo->tbo.bdev->fence_lock);
	if (rbo->tbo.sync_obj)
		work->fence = FUNC16(rbo->tbo.sync_obj);
	FUNC21(&rbo->tbo.bdev->fence_lock);

	FUNC4(&work->work, radeon_unpin_work_func);

	/* We borrow the event spin lock for protecting unpin_work */
	FUNC20(&dev->event_lock, flags);
	if (radeon_crtc->unpin_work) {
		FUNC2("flip queue: crtc already busy\n");
		r = -EBUSY;
		goto unlock_free;
	}
	radeon_crtc->unpin_work = work;
	radeon_crtc->deferred_flip_completion = 0;
	FUNC22(&dev->event_lock, flags);

	/* pin the new buffer */
	FUNC2("flip-ioctl() cur_fbo = %p, cur_bbo = %p\n",
			 work->old_rbo, rbo);

	r = FUNC13(rbo, false);
	if (FUNC25(r != 0)) {
		FUNC3("failed to reserve new rbo buffer before flip\n");
		goto pflip_cleanup;
	}
	/* Only 27 bit offset for legacy CRTC */
	r = FUNC12(rbo, RADEON_GEM_DOMAIN_VRAM,
				     FUNC0(rdev) ? 0 : 1 << 27, &base);
	if (FUNC25(r != 0)) {
		FUNC15(rbo);
		r = -EINVAL;
		FUNC3("failed to pin new rbo buffer before flip\n");
		goto pflip_cleanup;
	}
	FUNC11(rbo, &tiling_flags, NULL);
	FUNC15(rbo);

	if (!FUNC0(rdev)) {
		/* crtc offset is from display base addr not FB location */
		base -= radeon_crtc->legacy_display_base_addr;
		pitch_pixels = fb->pitches[0] / (fb->bits_per_pixel / 8);

		if (tiling_flags & RADEON_TILING_MACRO) {
			if (FUNC1(rdev)) {
				base &= ~0x7ff;
			} else {
				int byteshift = fb->bits_per_pixel >> 4;
				int tile_addr = (((crtc->y >> 3) * pitch_pixels +  crtc->x) >> (8 - byteshift)) << 11;
				base += tile_addr + ((crtc->x << byteshift) % 256) + ((crtc->y % 8) << 8);
			}
		} else {
			int offset = crtc->y * pitch_pixels + crtc->x;
			switch (fb->bits_per_pixel) {
			case 8:
			default:
				offset *= 1;
				break;
			case 15:
			case 16:
				offset *= 2;
				break;
			case 24:
				offset *= 3;
				break;
			case 32:
				offset *= 4;
				break;
			}
			base += offset;
		}
		base &= ~7;
	}

	FUNC20(&dev->event_lock, flags);
	work->new_crtc_base = base;
	FUNC22(&dev->event_lock, flags);

	/* update crtc fb */
	crtc->fb = fb;

	r = FUNC7(dev, radeon_crtc->crtc_id);
	if (r) {
		FUNC3("failed to get vblank before flip\n");
		goto pflip_cleanup1;
	}

	/* set the proper interrupt */
	FUNC18(rdev, radeon_crtc->crtc_id);

	return 0;

pflip_cleanup1:
	if (FUNC25(FUNC13(rbo, false) != 0)) {
		FUNC3("failed to reserve new rbo in error path\n");
		goto pflip_cleanup;
	}
	if (FUNC25(FUNC14(rbo) != 0)) {
		FUNC3("failed to unpin new rbo in error path\n");
	}
	FUNC15(rbo);

pflip_cleanup:
	FUNC20(&dev->event_lock, flags);
	radeon_crtc->unpin_work = NULL;
unlock_free:
	FUNC22(&dev->event_lock, flags);
	FUNC6(old_radeon_fb->obj);
	FUNC17(&work->fence);
	FUNC9(work);

	return r;
}