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
struct nv04_mode_state {int dummy; } ;
struct nouveau_drm {int /*<<< orphan*/  device; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {int chipset; } ;

/* Variables and functions */
 struct nouveau_drm* FUNC0 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*,int) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*,int,struct nv04_mode_state*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*,int,struct nv04_mode_state*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*,int,struct nv04_mode_state*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*,int,struct nv04_mode_state*) ; 

void FUNC7(struct drm_device *dev, int head,
			   struct nv04_mode_state *state)
{
	struct nouveau_drm *drm = FUNC0(dev);

	if (FUNC2(drm->device)->chipset == 0x11)
		/* NB: no attempt is made to restore the bad pll later on */
		FUNC1(dev, head);
	FUNC5(dev, head, state);
	FUNC6(dev, head, state);
	FUNC4(dev, head, state);
	FUNC3(dev, head, state);
}