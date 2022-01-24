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
struct nv50_sync {int addr; int data; } ;
struct nouveau_framebuffer {int r_dma; int r_pitch; int r_format; TYPE_2__* nvbo; } ;
struct nouveau_crtc {int index; } ;
struct nouveau_channel {int vram; int /*<<< orphan*/  object; } ;
struct drm_framebuffer {int height; int width; } ;
struct drm_crtc {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int offset; } ;
struct TYPE_4__ {TYPE_1__ bo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nouveau_channel*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_channel*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_channel*) ; 
 int /*<<< orphan*/  NV11_SUBCHAN_DMA_SEMAPHORE ; 
 int /*<<< orphan*/  NV11_SUBCHAN_SEMAPHORE_OFFSET ; 
 int /*<<< orphan*/  NV11_SUBCHAN_SEMAPHORE_RELEASE ; 
 scalar_t__ NV84_CHANNEL_IND_CLASS ; 
 int /*<<< orphan*/  NV84_SUBCHAN_SEMAPHORE_ADDRESS_HIGH ; 
 int NV84_SUBCHAN_SEMAPHORE_TRIGGER_ACQUIRE_EQUAL ; 
 int NV84_SUBCHAN_SEMAPHORE_TRIGGER_WRITE_LONG ; 
 scalar_t__ NVC0_CHANNEL_IND_CLASS ; 
 int NVC0_SUBCHAN_SEMAPHORE_TRIGGER_YIELD ; 
 scalar_t__ NVD0_DISP_SYNC_CLASS ; 
 int NvEvoSema0 ; 
 int NvEvoSync ; 
 int /*<<< orphan*/  FUNC3 (struct nouveau_channel*,int) ; 
 int FUNC4 (struct nouveau_channel*,int) ; 
 int /*<<< orphan*/  FUNC5 (int*,int) ; 
 int /*<<< orphan*/  FUNC6 (int*,struct nv50_sync*) ; 
 int /*<<< orphan*/  FUNC7 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int* FUNC9 (struct nv50_sync*,int) ; 
 int FUNC10 (int) ; 
 struct nouveau_crtc* FUNC11 (struct drm_crtc*) ; 
 struct nouveau_framebuffer* FUNC12 (struct drm_framebuffer*) ; 
 struct nv50_sync* FUNC13 (struct drm_crtc*) ; 
 scalar_t__ FUNC14 (struct nv50_sync*) ; 
 int FUNC15 (struct nouveau_channel*,int) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 int FUNC18 (int) ; 

int
FUNC19(struct drm_crtc *crtc, struct drm_framebuffer *fb,
		       struct nouveau_channel *chan, u32 swap_interval)
{
	struct nouveau_framebuffer *nv_fb = FUNC12(fb);
	struct nouveau_crtc *nv_crtc = FUNC11(crtc);
	struct nv50_sync *sync = FUNC13(crtc);
	int head = nv_crtc->index, ret;
	u32 *push;

	swap_interval <<= 4;
	if (swap_interval == 0)
		swap_interval |= 0x100;
	if (chan == NULL)
		FUNC8(crtc->dev);

	push = FUNC9(sync, 128);
	if (FUNC17(push == NULL))
		return -EBUSY;

	if (chan && FUNC16(chan->object) < NV84_CHANNEL_IND_CLASS) {
		ret = FUNC4(chan, 8);
		if (ret)
			return ret;

		FUNC0(chan, 0, NV11_SUBCHAN_DMA_SEMAPHORE, 2);
		FUNC3  (chan, NvEvoSema0 + head);
		FUNC3  (chan, sync->addr ^ 0x10);
		FUNC0(chan, 0, NV11_SUBCHAN_SEMAPHORE_RELEASE, 1);
		FUNC3  (chan, sync->data + 1);
		FUNC0(chan, 0, NV11_SUBCHAN_SEMAPHORE_OFFSET, 2);
		FUNC3  (chan, sync->addr);
		FUNC3  (chan, sync->data);
	} else
	if (chan && FUNC16(chan->object) < NVC0_CHANNEL_IND_CLASS) {
		u64 addr = FUNC15(chan, head) + sync->addr;
		ret = FUNC4(chan, 12);
		if (ret)
			return ret;

		FUNC0(chan, 0, NV11_SUBCHAN_DMA_SEMAPHORE, 1);
		FUNC3  (chan, chan->vram);
		FUNC0(chan, 0, NV84_SUBCHAN_SEMAPHORE_ADDRESS_HIGH, 4);
		FUNC3  (chan, FUNC18(addr ^ 0x10));
		FUNC3  (chan, FUNC10(addr ^ 0x10));
		FUNC3  (chan, sync->data + 1);
		FUNC3  (chan, NV84_SUBCHAN_SEMAPHORE_TRIGGER_WRITE_LONG);
		FUNC0(chan, 0, NV84_SUBCHAN_SEMAPHORE_ADDRESS_HIGH, 4);
		FUNC3  (chan, FUNC18(addr));
		FUNC3  (chan, FUNC10(addr));
		FUNC3  (chan, sync->data);
		FUNC3  (chan, NV84_SUBCHAN_SEMAPHORE_TRIGGER_ACQUIRE_EQUAL);
	} else
	if (chan) {
		u64 addr = FUNC15(chan, head) + sync->addr;
		ret = FUNC4(chan, 10);
		if (ret)
			return ret;

		FUNC1(chan, 0, NV84_SUBCHAN_SEMAPHORE_ADDRESS_HIGH, 4);
		FUNC3  (chan, FUNC18(addr ^ 0x10));
		FUNC3  (chan, FUNC10(addr ^ 0x10));
		FUNC3  (chan, sync->data + 1);
		FUNC3  (chan, NV84_SUBCHAN_SEMAPHORE_TRIGGER_WRITE_LONG |
				 NVC0_SUBCHAN_SEMAPHORE_TRIGGER_YIELD);
		FUNC1(chan, 0, NV84_SUBCHAN_SEMAPHORE_ADDRESS_HIGH, 4);
		FUNC3  (chan, FUNC18(addr));
		FUNC3  (chan, FUNC10(addr));
		FUNC3  (chan, sync->data);
		FUNC3  (chan, NV84_SUBCHAN_SEMAPHORE_TRIGGER_ACQUIRE_EQUAL |
				 NVC0_SUBCHAN_SEMAPHORE_TRIGGER_YIELD);
	}

	if (chan) {
		sync->addr ^= 0x10;
		sync->data++;
		FUNC2 (chan);
	}

	/* queue the flip */
	FUNC7(push, 0x0100, 1);
	FUNC5(push, 0xfffe0000);
	FUNC7(push, 0x0084, 1);
	FUNC5(push, swap_interval);
	if (!(swap_interval & 0x00000100)) {
		FUNC7(push, 0x00e0, 1);
		FUNC5(push, 0x40000000);
	}
	FUNC7(push, 0x0088, 4);
	FUNC5(push, sync->addr);
	FUNC5(push, sync->data++);
	FUNC5(push, sync->data);
	FUNC5(push, NvEvoSync);
	FUNC7(push, 0x00a0, 2);
	FUNC5(push, 0x00000000);
	FUNC5(push, 0x00000000);
	FUNC7(push, 0x00c0, 1);
	FUNC5(push, nv_fb->r_dma);
	FUNC7(push, 0x0110, 2);
	FUNC5(push, 0x00000000);
	FUNC5(push, 0x00000000);
	if (FUNC14(sync) < NVD0_DISP_SYNC_CLASS) {
		FUNC7(push, 0x0800, 5);
		FUNC5(push, nv_fb->nvbo->bo.offset >> 8);
		FUNC5(push, 0);
		FUNC5(push, (fb->height << 16) | fb->width);
		FUNC5(push, nv_fb->r_pitch);
		FUNC5(push, nv_fb->r_format);
	} else {
		FUNC7(push, 0x0400, 5);
		FUNC5(push, nv_fb->nvbo->bo.offset >> 8);
		FUNC5(push, 0);
		FUNC5(push, (fb->height << 16) | fb->width);
		FUNC5(push, nv_fb->r_pitch);
		FUNC5(push, nv_fb->r_format);
	}
	FUNC7(push, 0x0080, 1);
	FUNC5(push, 0x00000000);
	FUNC6(push, sync);
	return 0;
}