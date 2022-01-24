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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct nouveau_pm_tbl_entry {int dummy; } ;
struct nouveau_pm_memtiming {int* mr; int /*<<< orphan*/  tCWL; } ;
struct TYPE_3__ {struct nouveau_pm_memtiming timing; } ;
struct nouveau_pm {TYPE_1__ boot; } ;
struct TYPE_4__ {int type; } ;
struct nouveau_fb {TYPE_2__ ram; } ;
struct nouveau_device {int card_type; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
#define  NV_40 135 
#define  NV_50 134 
#define  NV_C0 133 
#define  NV_D0 132 
#define  NV_MEM_TYPE_DDR2 131 
#define  NV_MEM_TYPE_DDR3 130 
#define  NV_MEM_TYPE_GDDR3 129 
#define  NV_MEM_TYPE_GDDR5 128 
 struct nouveau_device* FUNC0 (struct drm_device*) ; 
 struct nouveau_fb* FUNC1 (struct nouveau_device*) ; 
 int FUNC2 (struct drm_device*,int /*<<< orphan*/ ,struct nouveau_pm_tbl_entry*,int,struct nouveau_pm_memtiming*,struct nouveau_pm_memtiming*) ; 
 int FUNC3 (struct drm_device*,int /*<<< orphan*/ ,struct nouveau_pm_tbl_entry*,int,struct nouveau_pm_memtiming*,struct nouveau_pm_memtiming*) ; 
 int FUNC4 (struct drm_device*,int /*<<< orphan*/ ,struct nouveau_pm_tbl_entry*,int,struct nouveau_pm_memtiming*,struct nouveau_pm_memtiming*) ; 
 int FUNC5 (struct drm_device*,int /*<<< orphan*/ ,struct nouveau_pm_tbl_entry*,int,struct nouveau_pm_memtiming*,struct nouveau_pm_memtiming*) ; 
 int* FUNC6 (struct drm_device*,int /*<<< orphan*/ ,int*,int*) ; 
 int* FUNC7 (struct drm_device*,int /*<<< orphan*/ ,int*,int*) ; 
 struct nouveau_pm* FUNC8 (struct drm_device*) ; 
 int FUNC9 (struct drm_device*,int /*<<< orphan*/ ,struct nouveau_pm_tbl_entry*,int,struct nouveau_pm_memtiming*,struct nouveau_pm_memtiming*) ; 
 int FUNC10 (struct drm_device*,int /*<<< orphan*/ ,struct nouveau_pm_tbl_entry*,int,struct nouveau_pm_memtiming*,struct nouveau_pm_memtiming*) ; 
 int FUNC11 (struct drm_device*,int /*<<< orphan*/ ,struct nouveau_pm_tbl_entry*,int,struct nouveau_pm_memtiming*,struct nouveau_pm_memtiming*) ; 

int
FUNC12(struct drm_device *dev, u32 freq,
			struct nouveau_pm_memtiming *t)
{
	struct nouveau_device *device = FUNC0(dev);
	struct nouveau_fb *pfb = FUNC1(device);
	struct nouveau_pm *pm = FUNC8(dev);
	struct nouveau_pm_memtiming *boot = &pm->boot.timing;
	struct nouveau_pm_tbl_entry *e;
	u8 ver, len, *ptr, *ramcfg;
	int ret;

	ptr = FUNC7(dev, freq, &ver, &len);
	if (!ptr || ptr[0] == 0x00) {
		*t = *boot;
		return 0;
	}
	e = (struct nouveau_pm_tbl_entry *)ptr;

	t->tCWL = boot->tCWL;

	switch (device->card_type) {
	case NV_40:
		ret = FUNC9(dev, freq, e, len, boot, t);
		break;
	case NV_50:
		ret = FUNC10(dev, freq, e, len, boot, t);
		break;
	case NV_C0:
	case NV_D0:
		ret = FUNC11(dev, freq, e, len, boot, t);
		break;
	default:
		ret = -ENODEV;
		break;
	}

	switch (pfb->ram.type * !ret) {
	case NV_MEM_TYPE_GDDR3:
		ret = FUNC4(dev, freq, e, len, boot, t);
		break;
	case NV_MEM_TYPE_GDDR5:
		ret = FUNC5(dev, freq, e, len, boot, t);
		break;
	case NV_MEM_TYPE_DDR2:
		ret = FUNC2(dev, freq, e, len, boot, t);
		break;
	case NV_MEM_TYPE_DDR3:
		ret = FUNC3(dev, freq, e, len, boot, t);
		break;
	default:
		ret = -EINVAL;
		break;
	}

	ramcfg = FUNC6(dev, freq, &ver, &len);
	if (ramcfg) {
		int dll_off;

		if (ver == 0x00)
			dll_off = !!(ramcfg[3] & 0x04);
		else
			dll_off = !!(ramcfg[2] & 0x40);

		switch (pfb->ram.type) {
		case NV_MEM_TYPE_GDDR3:
			t->mr[1] &= ~0x00000040;
			t->mr[1] |=  0x00000040 * dll_off;
			break;
		default:
			t->mr[1] &= ~0x00000001;
			t->mr[1] |=  0x00000001 * dll_off;
			break;
		}
	}

	return ret;
}