#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct nouveau_page_flip_state {int y; int pitch; int x; int bpp; scalar_t__ offset; int /*<<< orphan*/  crtc; } ;
struct nouveau_drm {int /*<<< orphan*/  dev; int /*<<< orphan*/  device; } ;
struct nouveau_channel {struct nouveau_drm* drm; } ;
struct TYPE_2__ {scalar_t__ card_type; } ;

/* Variables and functions */
 scalar_t__ NV_50 ; 
 int /*<<< orphan*/  FUNC0 (struct nouveau_channel*,struct nouveau_page_flip_state*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

int
FUNC3(void *data)
{
	struct nouveau_channel *chan = data;
	struct nouveau_drm *drm = chan->drm;
	struct nouveau_page_flip_state state;

	if (!FUNC0(chan, &state)) {
		if (FUNC1(drm->device)->card_type < NV_50) {
			FUNC2(drm->dev, state.crtc, state.offset +
					 state.y * state.pitch +
					 state.x * state.bpp / 8);
		}
	}

	return 0;
}