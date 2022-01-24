#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct nv50_display_flip {int /*<<< orphan*/  chan; int /*<<< orphan*/  disp; } ;
struct nouveau_device {int dummy; } ;
struct drm_crtc {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int) ; 
 struct nouveau_device* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nv50_display_flip_wait ; 
 int /*<<< orphan*/  FUNC6 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC7 (struct nouveau_device*,int /*<<< orphan*/ ,struct nv50_display_flip*) ; 

void
FUNC8(struct drm_crtc *crtc)
{
	struct nouveau_device *device = FUNC4(crtc->dev);
	struct nv50_display_flip flip = {
		.disp = FUNC5(crtc->dev),
		.chan = FUNC6(crtc),
	};
	u32 *push;

	push = FUNC3(flip.chan, 8);
	if (push) {
		FUNC2(push, 0x0084, 1);
		FUNC0(push, 0x00000000);
		FUNC2(push, 0x0094, 1);
		FUNC0(push, 0x00000000);
		FUNC2(push, 0x00c0, 1);
		FUNC0(push, 0x00000000);
		FUNC2(push, 0x0080, 1);
		FUNC0(push, 0x00000000);
		FUNC1(push, flip.chan);
	}

	FUNC7(device, nv50_display_flip_wait, &flip);
}