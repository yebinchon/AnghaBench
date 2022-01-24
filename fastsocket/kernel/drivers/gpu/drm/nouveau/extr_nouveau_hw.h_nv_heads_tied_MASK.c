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
struct nouveau_device {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {int chipset; } ;

/* Variables and functions */
 int FUNC0 (struct drm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NV_CIO_CRE_44 ; 
 int /*<<< orphan*/  NV_PBUS_DEBUG_1 ; 
 struct nouveau_device* FUNC1 (struct drm_device*) ; 
 struct nouveau_drm* FUNC2 (struct drm_device*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct nouveau_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool
FUNC5(struct drm_device *dev)
{
	struct nouveau_device *device = FUNC1(dev);
	struct nouveau_drm *drm = FUNC2(dev);

	if (FUNC3(drm->device)->chipset == 0x11)
		return !!(FUNC4(device, NV_PBUS_DEBUG_1) & (1 << 28));

	return FUNC0(dev, 0, NV_CIO_CRE_44) & 0x4;
}