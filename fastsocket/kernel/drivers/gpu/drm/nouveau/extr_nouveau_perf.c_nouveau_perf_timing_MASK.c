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
typedef  int u8 ;
typedef  int u32 ;
struct nvbios {scalar_t__ type; } ;
struct nouveau_drm {struct nvbios vbios; } ;
struct drm_device {int dummy; } ;
struct bit_entry {int version; int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 scalar_t__ NVBIOS_BMP ; 
 int FUNC0 (int) ; 
 int* FUNC1 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,char,struct bit_entry*) ; 
 struct nouveau_drm* FUNC3 (struct drm_device*) ; 
 int* FUNC4 (struct drm_device*,int /*<<< orphan*/ ,int*,int*,int*,int*) ; 
 int* FUNC5 (struct drm_device*,int,int*,int*) ; 

u8 *
FUNC6(struct drm_device *dev, u32 freq, u8 *ver, u8 *len)
{
	struct nouveau_drm *drm = FUNC3(dev);
	struct nvbios *bios = &drm->vbios;
	struct bit_entry P;
	u8 *perf, *timing = NULL;
	u8 i = 0, hdr, cnt;

	if (bios->type == NVBIOS_BMP) {
		while ((perf = FUNC4(dev, i++, ver, &hdr, &cnt,
						  len)) && *ver == 0x15) {
			if (freq <= FUNC0(perf[5]) * 20) {
				*ver = 0x00;
				*len = 14;
				return perf + 41;
			}
		}
		return NULL;
	}

	if (!FUNC2(dev, 'P', &P)) {
		if (P.version == 1)
			timing = FUNC1(dev, P.data[4]);
		else
		if (P.version == 2)
			timing = FUNC1(dev, P.data[8]);
	}

	if (timing && timing[0] == 0x10) {
		u8 *ramcfg = FUNC5(dev, freq, ver, len);
		if (ramcfg && ramcfg[1] < timing[2]) {
			*ver = timing[0];
			*len = timing[3];
			return timing + timing[1] + (ramcfg[1] * timing[3]);
		}
	}

	return NULL;
}