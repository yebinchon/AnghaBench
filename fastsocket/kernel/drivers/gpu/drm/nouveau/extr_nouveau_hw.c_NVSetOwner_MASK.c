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
struct drm_device {int dummy; } ;
struct TYPE_2__ {int chipset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  NV_CIO_CRE_2E ; 
 int /*<<< orphan*/  NV_CIO_CRE_44 ; 
 int /*<<< orphan*/  NV_CIO_SR_LOCK_INDEX ; 
 struct nouveau_drm* FUNC2 (struct drm_device*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 

void
FUNC4(struct drm_device *dev, int owner)
{
	struct nouveau_drm *drm = FUNC2(dev);

	if (owner == 1)
		owner *= 3;

	if (FUNC3(drm->device)->chipset == 0x11) {
		/* This might seem stupid, but the blob does it and
		 * omitting it often locks the system up.
		 */
		FUNC0(dev, 0, NV_CIO_SR_LOCK_INDEX);
		FUNC0(dev, 1, NV_CIO_SR_LOCK_INDEX);
	}

	/* CR44 is always changed on CRTC0 */
	FUNC1(dev, 0, NV_CIO_CRE_44, owner);

	if (FUNC3(drm->device)->chipset == 0x11) {	/* set me harder */
		FUNC1(dev, 0, NV_CIO_CRE_2E, owner);
		FUNC1(dev, 0, NV_CIO_CRE_2E, owner);
	}
}