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
typedef  scalar_t__ u32 ;
struct nv40_pm_state {int npll_coef; int npll_ctrl; int spll; int ctrl; int mpll_ctrl; int mpll_coef; } ;
struct nouveau_fifo {int /*<<< orphan*/  (* start ) (struct nouveau_fifo*,unsigned long*) ;int /*<<< orphan*/  (* pause ) (struct nouveau_fifo*,unsigned long*) ;} ;
struct nouveau_drm {int /*<<< orphan*/  device; } ;
struct nouveau_device {int dummy; } ;
struct drm_device {int dummy; } ;
struct bit_entry {int /*<<< orphan*/ * data; } ;
struct TYPE_2__ {int chipset; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*,char,struct bit_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct nv40_pm_state*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct nouveau_device* FUNC5 (struct drm_device*) ; 
 struct nouveau_drm* FUNC6 (struct drm_device*) ; 
 struct nouveau_fifo* FUNC7 (struct nouveau_device*) ; 
 int /*<<< orphan*/  nv40_pm_gr_idle ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct nouveau_device*,int,int,int) ; 
 int FUNC10 (struct nouveau_device*,int) ; 
 scalar_t__ FUNC11 (struct nouveau_device*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct nouveau_device*,int,int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct nouveau_device*,int /*<<< orphan*/ ,struct drm_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct nouveau_device*,int,int) ; 
 int /*<<< orphan*/  FUNC15 (struct nouveau_device*,int,int) ; 
 int /*<<< orphan*/  FUNC16 (struct nouveau_fifo*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC17 (struct nouveau_fifo*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 

int
FUNC19(struct drm_device *dev, void *pre_state)
{
	struct nouveau_device *device = FUNC5(dev);
	struct nouveau_fifo *pfifo = FUNC7(device);
	struct nouveau_drm *drm = FUNC6(dev);
	struct nv40_pm_state *info = pre_state;
	unsigned long flags;
	struct bit_entry M;
	u32 crtc_mask = 0;
	u8 sr1[2];
	int i, ret = -EAGAIN;

	/* determine which CRTCs are active, fetch VGA_SR1 for each */
	for (i = 0; i < 2; i++) {
		u32 vbl = FUNC11(device, 0x600808 + (i * 0x2000));
		u32 cnt = 0;
		do {
			if (vbl != FUNC11(device, 0x600808 + (i * 0x2000))) {
				FUNC14(device, 0x0c03c4 + (i * 0x2000), 0x01);
				sr1[i] = FUNC10(device, 0x0c03c5 + (i * 0x2000));
				if (!(sr1[i] & 0x20))
					crtc_mask |= (1 << i);
				break;
			}
			FUNC18(1);
		} while (cnt++ < 32);
	}

	/* halt and idle engines */
	pfifo->pause(pfifo, &flags);

	if (!FUNC13(device, nv40_pm_gr_idle, dev))
		goto resume;

	ret = 0;

	/* set engine clocks */
	FUNC9(device, 0x00c040, 0x00000333, 0x00000000);
	FUNC15(device, 0x004004, info->npll_coef);
	FUNC9(device, 0x004000, 0xc0070100, info->npll_ctrl);
	FUNC9(device, 0x004008, 0xc007ffff, info->spll);
	FUNC3(5);
	FUNC9(device, 0x00c040, 0x00000333, info->ctrl);

	if (!info->mpll_ctrl)
		goto resume;

	/* wait for vblank start on active crtcs, disable memory access */
	for (i = 0; i < 2; i++) {
		if (!(crtc_mask & (1 << i)))
			continue;
		FUNC12(device, 0x600808 + (i * 0x2000), 0x00010000, 0x00000000);
		FUNC12(device, 0x600808 + (i * 0x2000), 0x00010000, 0x00010000);
		FUNC14(device, 0x0c03c4 + (i * 0x2000), 0x01);
		FUNC14(device, 0x0c03c5 + (i * 0x2000), sr1[i] | 0x20);
	}

	/* prepare ram for reclocking */
	FUNC15(device, 0x1002d4, 0x00000001); /* precharge */
	FUNC15(device, 0x1002d0, 0x00000001); /* refresh */
	FUNC15(device, 0x1002d0, 0x00000001); /* refresh */
	FUNC9(device, 0x100210, 0x80000000, 0x00000000); /* no auto refresh */
	FUNC15(device, 0x1002dc, 0x00000001); /* enable self-refresh */

	/* change the PLL of each memory partition */
	FUNC9(device, 0x00c040, 0x0000c000, 0x00000000);
	switch (FUNC8(drm->device)->chipset) {
	case 0x40:
	case 0x45:
	case 0x41:
	case 0x42:
	case 0x47:
		FUNC9(device, 0x004044, 0xc0771100, info->mpll_ctrl);
		FUNC9(device, 0x00402c, 0xc0771100, info->mpll_ctrl);
		FUNC15(device, 0x004048, info->mpll_coef);
		FUNC15(device, 0x004030, info->mpll_coef);
	case 0x43:
	case 0x49:
	case 0x4b:
		FUNC9(device, 0x004038, 0xc0771100, info->mpll_ctrl);
		FUNC15(device, 0x00403c, info->mpll_coef);
	default:
		FUNC9(device, 0x004020, 0xc0771100, info->mpll_ctrl);
		FUNC15(device, 0x004024, info->mpll_coef);
		break;
	}
	FUNC18(100);
	FUNC9(device, 0x00c040, 0x0000c000, 0x0000c000);

	/* re-enable normal operation of memory controller */
	FUNC15(device, 0x1002dc, 0x00000000);
	FUNC9(device, 0x100210, 0x80000000, 0x80000000);
	FUNC18(100);

	/* execute memory reset script from vbios */
	if (!FUNC1(dev, 'M', &M))
		FUNC4(dev, FUNC0(M.data[0]), NULL, 0);

	/* make sure we're in vblank (hopefully the same one as before), and
	 * then re-enable crtc memory access
	 */
	for (i = 0; i < 2; i++) {
		if (!(crtc_mask & (1 << i)))
			continue;
		FUNC12(device, 0x600808 + (i * 0x2000), 0x00010000, 0x00010000);
		FUNC14(device, 0x0c03c4 + (i * 0x2000), 0x01);
		FUNC14(device, 0x0c03c5 + (i * 0x2000), sr1[i]);
	}

	/* resume engines */
resume:
	pfifo->start(pfifo, &flags);
	FUNC2(info);
	return ret;
}