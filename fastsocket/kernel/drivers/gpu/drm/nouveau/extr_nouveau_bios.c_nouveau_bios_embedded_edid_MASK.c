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
typedef  int uint8_t ;
typedef  size_t uint16_t ;
struct TYPE_2__ {int* edid; } ;
struct nvbios {int* data; TYPE_1__ fp; } ;
struct nouveau_drm {struct nvbios vbios; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EDID1_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct nouveau_drm*,char*) ; 
 int NV_PROM_SIZE ; 
 size_t FUNC1 (int*,int,int const*,int) ; 
 struct nouveau_drm* FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ) ; 

uint8_t *FUNC4(struct drm_device *dev)
{
	struct nouveau_drm *drm = FUNC2(dev);
	struct nvbios *bios = &drm->vbios;
	const uint8_t edid_sig[] = {
			0x00, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x00 };
	uint16_t offset = 0;
	uint16_t newoffset;
	int searchlen = NV_PROM_SIZE;

	if (bios->fp.edid)
		return bios->fp.edid;

	while (searchlen) {
		newoffset = FUNC1(&bios->data[offset], searchlen,
								edid_sig, 8);
		if (!newoffset)
			return NULL;
		offset += newoffset;
		if (!FUNC3(&bios->data[offset], EDID1_LEN))
			break;

		searchlen -= offset;
		offset++;
	}

	FUNC0(drm, "Found EDID in BIOS\n");

	return bios->fp.edid = &bios->data[offset];
}