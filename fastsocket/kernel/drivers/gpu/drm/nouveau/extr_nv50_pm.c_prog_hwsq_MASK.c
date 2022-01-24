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
typedef  int u32 ;
struct nouveau_drm {int /*<<< orphan*/  device; } ;
struct nouveau_device {int dummy; } ;
struct TYPE_3__ {int* u32; } ;
struct hwsq_ucode {int len; TYPE_1__ ptr; } ;
struct drm_device {int dummy; } ;
struct TYPE_4__ {int chipset; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct nouveau_drm*,char*,...) ; 
 struct nouveau_device* FUNC1 (struct drm_device*) ; 
 struct nouveau_drm* FUNC2 (struct drm_device*) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nouveau_device*,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nouveau_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct nouveau_device*,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct nouveau_device*,int,int) ; 

__attribute__((used)) static int
FUNC8(struct drm_device *dev, struct hwsq_ucode *hwsq)
{
	struct nouveau_device *device = FUNC1(dev);
	struct nouveau_drm *drm = FUNC2(dev);
	u32 hwsq_data, hwsq_kick;
	int i;

	if (FUNC3(drm->device)->chipset < 0x94) {
		hwsq_data = 0x001400;
		hwsq_kick = 0x00000003;
	} else {
		hwsq_data = 0x080000;
		hwsq_kick = 0x00000001;
	}
	/* upload hwsq ucode */
	FUNC4(device, 0x001098, 0x00000008, 0x00000000);
	FUNC7(device, 0x001304, 0x00000000);
	if (FUNC3(drm->device)->chipset >= 0x92)
		FUNC7(device, 0x001318, 0x00000000);
	for (i = 0; i < hwsq->len / 4; i++)
		FUNC7(device, hwsq_data + (i * 4), hwsq->ptr.u32[i]);
	FUNC4(device, 0x001098, 0x00000018, 0x00000018);

	/* launch, and wait for completion */
	FUNC7(device, 0x00130c, hwsq_kick);
	if (!FUNC6(device, 0x001308, 0x00000100, 0x00000000)) {
		FUNC0(drm, "hwsq ucode exec timed out\n");
		FUNC0(drm, "0x001308: 0x%08x\n", FUNC5(device, 0x001308));
		for (i = 0; i < hwsq->len / 4; i++) {
			FUNC0(drm, "0x%06x: 0x%08x\n", 0x1400 + (i * 4),
				 FUNC5(device, 0x001400 + (i * 4)));
		}

		return -EIO;
	}

	return 0;
}