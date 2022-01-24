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
typedef  int u8 ;
typedef  int u32 ;
struct nouveau_drm {int /*<<< orphan*/  device; } ;
struct drm_device {int dummy; } ;
struct bit_entry {int version; int /*<<< orphan*/ * data; } ;
struct TYPE_2__ {int chipset; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int* FUNC1 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,char,struct bit_entry*) ; 
 struct nouveau_drm* FUNC3 (struct drm_device*) ; 
 int* FUNC4 (struct drm_device*,int /*<<< orphan*/ ,int*,int*,int*,int*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ) ; 

u8 *
FUNC6(struct drm_device *dev, u32 freq,
		    u8 *ver, u8 *hdr, u8 *cnt, u8 *len)
{
	struct nouveau_drm *drm = FUNC3(dev);
	struct bit_entry P;
	u8 *perf, i = 0;

	if (!FUNC2(dev, 'P', &P) && P.version == 2) {
		u8 *rammap = FUNC1(dev, P.data[4]);
		if (rammap) {
			u8 *ramcfg = rammap + rammap[1];

			*ver = rammap[0];
			*hdr = rammap[2];
			*cnt = rammap[4];
			*len = rammap[3];

			freq /= 1000;
			for (i = 0; i < rammap[5]; i++) {
				if (freq >= FUNC0(ramcfg[0]) &&
				    freq <= FUNC0(ramcfg[2]))
					return ramcfg;

				ramcfg += *hdr + (*cnt * *len);
			}
		}

		return NULL;
	}

	if (FUNC5(drm->device)->chipset == 0x49 ||
	    FUNC5(drm->device)->chipset == 0x4b)
		freq /= 2;

	while ((perf = FUNC4(dev, i++, ver, hdr, cnt, len))) {
		if (*ver >= 0x20 && *ver < 0x25) {
			if (perf[0] != 0xff && freq <= FUNC0(perf[11]) * 1000)
				break;
		} else
		if (*ver >= 0x25 && *ver < 0x40) {
			if (perf[0] != 0xff && freq <= FUNC0(perf[12]) * 1000)
				break;
		}
	}

	if (perf) {
		u8 *ramcfg = perf + *hdr;
		*ver = 0x00;
		*hdr = 0;
		return ramcfg;
	}

	return NULL;
}