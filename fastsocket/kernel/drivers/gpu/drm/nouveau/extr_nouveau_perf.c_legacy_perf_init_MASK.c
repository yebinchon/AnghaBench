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
struct nvbios {char* data; size_t offset; } ;
struct nouveau_pm {int nr_perflvl; TYPE_1__* perflvl; } ;
struct nouveau_drm {struct nvbios vbios; } ;
struct nouveau_device {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {int memory; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nouveau_drm*,char*) ; 
 int /*<<< orphan*/  NV_PEXTDEV_BOOT_0 ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_drm*,char*,char) ; 
 int FUNC2 (char) ; 
 char* FUNC3 (struct drm_device*,char) ; 
 struct nouveau_device* FUNC4 (struct drm_device*) ; 
 struct nouveau_drm* FUNC5 (struct drm_device*) ; 
 struct nouveau_pm* FUNC6 (struct drm_device*) ; 
 int FUNC7 (struct nouveau_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC9(struct drm_device *dev)
{
	struct nouveau_device *device = FUNC4(dev);
	struct nouveau_drm *drm = FUNC5(dev);
	struct nvbios *bios = &drm->vbios;
	struct nouveau_pm *pm = FUNC6(dev);
	char *perf, *entry, *bmp = &bios->data[bios->offset];
	int headerlen, use_straps;

	if (bmp[5] < 0x5 || bmp[6] < 0x14) {
		FUNC0(drm, "BMP version too old for perf\n");
		return;
	}

	perf = FUNC3(dev, bmp[0x73]);
	if (!perf) {
		FUNC0(drm, "No memclock table pointer found.\n");
		return;
	}

	switch (perf[0]) {
	case 0x12:
	case 0x14:
	case 0x18:
		use_straps = 0;
		headerlen = 1;
		break;
	case 0x01:
		use_straps = perf[1] & 1;
		headerlen = (use_straps ? 8 : 2);
		break;
	default:
		FUNC1(drm, "Unknown memclock table version %x.\n", perf[0]);
		return;
	}

	entry = perf + headerlen;
	if (use_straps)
		entry += (FUNC7(device, NV_PEXTDEV_BOOT_0) & 0x3c) >> 1;

	FUNC8(pm->perflvl[0].name, "performance_level_0");
	pm->perflvl[0].memory = FUNC2(entry[0]) * 20;
	pm->nr_perflvl = 1;
}