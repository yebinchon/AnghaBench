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
struct nouveau_page_flip_state {int /*<<< orphan*/  head; } ;
struct nouveau_fence_chan {int /*<<< orphan*/  flip; } ;
struct nouveau_fence {int dummy; } ;
struct nouveau_drm {int /*<<< orphan*/  device; struct drm_device* dev; } ;
struct nouveau_channel {struct nouveau_drm* drm; struct nouveau_fence_chan* fence; } ;
struct TYPE_3__ {int /*<<< orphan*/  sync_obj; } ;
struct nouveau_bo {TYPE_1__ bo; } ;
struct drm_device {int /*<<< orphan*/  event_lock; } ;
struct TYPE_4__ {scalar_t__ card_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nouveau_channel*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_channel*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_channel*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nouveau_channel*) ; 
 int /*<<< orphan*/  NV10_SUBCHAN_REF_CNT ; 
 int /*<<< orphan*/  NVSW_SUBCHAN_PAGE_FLIP ; 
 scalar_t__ NV_C0 ; 
 int /*<<< orphan*/  NV_SW_PAGE_FLIP ; 
 int /*<<< orphan*/  NvSubSw ; 
 int /*<<< orphan*/  FUNC4 (struct nouveau_channel*,int) ; 
 int FUNC5 (struct nouveau_channel*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct nouveau_channel*,int,struct nouveau_fence**) ; 
 int FUNC9 (int /*<<< orphan*/ ,struct nouveau_channel*) ; 
 TYPE_2__* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int
FUNC13(struct nouveau_channel *chan,
		       struct nouveau_bo *old_bo,
		       struct nouveau_bo *new_bo,
		       struct nouveau_page_flip_state *s,
		       struct nouveau_fence **pfence)
{
	struct nouveau_fence_chan *fctx = chan->fence;
	struct nouveau_drm *drm = chan->drm;
	struct drm_device *dev = drm->dev;
	unsigned long flags;
	int ret;

	/* Queue it to the pending list */
	FUNC11(&dev->event_lock, flags);
	FUNC6(&s->head, &fctx->flip);
	FUNC12(&dev->event_lock, flags);

	/* Synchronize with the old framebuffer */
	ret = FUNC9(old_bo->bo.sync_obj, chan);
	if (ret)
		goto fail;

	/* Emit the pageflip */
	ret = FUNC5(chan, 3);
	if (ret)
		goto fail;

	if (FUNC10(drm->device)->card_type < NV_C0) {
		FUNC1(chan, NvSubSw, NV_SW_PAGE_FLIP, 1);
		FUNC4  (chan, 0x00000000);
		FUNC4  (chan, 0x00000000);
	} else {
		FUNC2(chan, 0, NV10_SUBCHAN_REF_CNT, 1);
		FUNC4  (chan, 0);
		FUNC0(chan, 0, NVSW_SUBCHAN_PAGE_FLIP, 0x0000);
	}
	FUNC3 (chan);

	ret = FUNC8(chan, false, pfence);
	if (ret)
		goto fail;

	return 0;
fail:
	FUNC11(&dev->event_lock, flags);
	FUNC7(&s->head);
	FUNC12(&dev->event_lock, flags);
	return ret;
}