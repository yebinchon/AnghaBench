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
struct nvbios {scalar_t__ type; int* data; int offset; } ;
struct nouveau_pm_voltage {int vid_mask; int version; int nr_level; int supported; TYPE_1__* level; } ;
struct nouveau_pm {struct nouveau_pm_voltage voltage; } ;
struct nouveau_gpio {scalar_t__ (* find ) (struct nouveau_gpio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct dcb_gpio_func*) ;} ;
struct nouveau_drm {struct nvbios vbios; int /*<<< orphan*/  device; } ;
struct drm_device {int dummy; } ;
struct dcb_gpio_func {int dummy; } ;
struct bit_entry {int version; int* data; } ;
typedef  scalar_t__ s16 ;
struct TYPE_2__ {int voltage; int vid; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ NVBIOS_BIT ; 
 int /*<<< orphan*/  FUNC0 (struct nouveau_drm*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_drm*,char*,int) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int* FUNC4 (struct drm_device*,int) ; 
 scalar_t__ FUNC5 (struct drm_device*,char,struct bit_entry*) ; 
 void* FUNC6 (int,int,int /*<<< orphan*/ ) ; 
 struct nouveau_drm* FUNC7 (struct drm_device*) ; 
 struct nouveau_gpio* FUNC8 (int /*<<< orphan*/ ) ; 
 struct nouveau_pm* FUNC9 (struct drm_device*) ; 
 int nr_vidtag ; 
 scalar_t__ FUNC10 (struct nouveau_gpio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct dcb_gpio_func*) ; 
 int /*<<< orphan*/ * vidtag ; 

void
FUNC11(struct drm_device *dev)
{
	struct nouveau_drm *drm = FUNC7(dev);
	struct nouveau_gpio *gpio = FUNC8(drm->device);
	struct nouveau_pm *pm = FUNC9(dev);
	struct nouveau_pm_voltage *voltage = &pm->voltage;
	struct nvbios *bios = &drm->vbios;
	struct dcb_gpio_func func;
	struct bit_entry P;
	u8 *volt = NULL, *entry;
	int i, headerlen, recordlen, entries, vidmask, vidshift;

	if (bios->type == NVBIOS_BIT) {
		if (FUNC5(dev, 'P', &P))
			return;

		if (P.version == 1)
			volt = FUNC4(dev, P.data[16]);
		else
		if (P.version == 2)
			volt = FUNC4(dev, P.data[12]);
		else {
			FUNC1(drm, "unknown volt for BIT P %d\n", P.version);
		}
	} else {
		if (bios->data[bios->offset + 6] < 0x27) {
			FUNC0(drm, "BMP version too old for voltage\n");
			return;
		}

		volt = FUNC4(dev, bios->data[bios->offset + 0x98]);
	}

	if (!volt) {
		FUNC0(drm, "voltage table pointer invalid\n");
		return;
	}

	switch (volt[0]) {
	case 0x10:
	case 0x11:
	case 0x12:
		headerlen = 5;
		recordlen = volt[1];
		entries   = volt[2];
		vidshift  = 0;
		vidmask   = volt[4];
		break;
	case 0x20:
		headerlen = volt[1];
		recordlen = volt[3];
		entries   = volt[2];
		vidshift  = 0; /* could be vidshift like 0x30? */
		vidmask   = volt[5];
		break;
	case 0x30:
		headerlen = volt[1];
		recordlen = volt[2];
		entries   = volt[3];
		vidmask   = volt[4];
		/* no longer certain what volt[5] is, if it's related to
		 * the vid shift then it's definitely not a function of
		 * how many bits are set.
		 *
		 * after looking at a number of nva3+ vbios images, they
		 * all seem likely to have a static shift of 2.. lets
		 * go with that for now until proven otherwise.
		 */
		vidshift  = 2;
		break;
	case 0x40:
		headerlen = volt[1];
		recordlen = volt[2];
		entries   = volt[3]; /* not a clue what the entries are for.. */
		vidmask   = volt[11]; /* guess.. */
		vidshift  = 0;
		break;
	default:
		FUNC1(drm, "voltage table 0x%02x unknown\n", volt[0]);
		return;
	}

	/* validate vid mask */
	voltage->vid_mask = vidmask;
	if (!voltage->vid_mask)
		return;

	i = 0;
	while (vidmask) {
		if (i > nr_vidtag) {
			FUNC0(drm, "vid bit %d unknown\n", i);
			return;
		}

		if (gpio && gpio->find(gpio, 0, vidtag[i], 0xff, &func)) {
			FUNC0(drm, "vid bit %d has no gpio tag\n", i);
			return;
		}

		vidmask >>= 1;
		i++;
	}

	/* parse vbios entries into common format */
	voltage->version = volt[0];
	if (voltage->version < 0x40) {
		voltage->nr_level = entries;
		voltage->level =
			FUNC6(entries, sizeof(*voltage->level), GFP_KERNEL);
		if (!voltage->level)
			return;

		entry = volt + headerlen;
		for (i = 0; i < entries; i++, entry += recordlen) {
			voltage->level[i].voltage = entry[0] * 10000;
			voltage->level[i].vid     = entry[1] >> vidshift;
		}
	} else {
		u32 volt_uv = FUNC3(volt[4]);
		s16 step_uv = FUNC2(volt[8]);
		u8 vid;

		voltage->nr_level = voltage->vid_mask + 1;
		voltage->level = FUNC6(voltage->nr_level,
					 sizeof(*voltage->level), GFP_KERNEL);
		if (!voltage->level)
			return;

		for (vid = 0; vid <= voltage->vid_mask; vid++) {
			voltage->level[vid].voltage = volt_uv;
			voltage->level[vid].vid = vid;
			volt_uv += step_uv;
		}
	}

	voltage->supported = true;
}