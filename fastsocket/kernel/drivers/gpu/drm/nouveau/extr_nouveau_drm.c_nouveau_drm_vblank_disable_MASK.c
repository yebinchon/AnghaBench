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
struct nouveau_drm {int /*<<< orphan*/  device; } ;
struct nouveau_disp {TYPE_1__* vblank; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {int index_nr; } ;

/* Variables and functions */
 struct nouveau_disp* FUNC0 (int /*<<< orphan*/ ) ; 
 struct nouveau_drm* FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int) ; 

__attribute__((used)) static void
FUNC3(struct drm_device *dev, int head)
{
	struct nouveau_drm *drm = FUNC1(dev);
	struct nouveau_disp *pdisp = FUNC0(drm->device);

	if (head < pdisp->vblank->index_nr)
		FUNC2(pdisp->vblank, head, 1);
}