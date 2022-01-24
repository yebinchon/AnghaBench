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
typedef  int u32 ;
struct TYPE_2__ {int vram_is_ddr; int vram_width; int /*<<< orphan*/  igp_sideport_enabled; int /*<<< orphan*/  aper_size; int /*<<< orphan*/  visible_vram_size; void* real_vram_size; void* mc_vram_size; int /*<<< orphan*/  aper_base; } ;
struct radeon_device {int flags; TYPE_1__ mc; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int CHANSIZE_MASK ; 
 int CHANSIZE_OVERRIDE ; 
 int /*<<< orphan*/  CHMAP ; 
 int /*<<< orphan*/  CONFIG_MEMSIZE ; 
 int NOOFCHAN_MASK ; 
 int NOOFCHAN_SHIFT ; 
 int RADEON_IS_IGP ; 
 int /*<<< orphan*/  RAMCFG ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*) ; 

__attribute__((used)) static int FUNC7(struct radeon_device *rdev)
{
	u32 tmp;
	int chansize, numchan;

	/* Get VRAM informations */
	rdev->mc.vram_is_ddr = true;
	tmp = FUNC0(RAMCFG);
	if (tmp & CHANSIZE_OVERRIDE) {
		chansize = 16;
	} else if (tmp & CHANSIZE_MASK) {
		chansize = 64;
	} else {
		chansize = 32;
	}
	tmp = FUNC0(CHMAP);
	switch ((tmp & NOOFCHAN_MASK) >> NOOFCHAN_SHIFT) {
	case 0:
	default:
		numchan = 1;
		break;
	case 1:
		numchan = 2;
		break;
	case 2:
		numchan = 4;
		break;
	case 3:
		numchan = 8;
		break;
	}
	rdev->mc.vram_width = numchan * chansize;
	/* Could aper size report 0 ? */
	rdev->mc.aper_base = FUNC2(rdev->pdev, 0);
	rdev->mc.aper_size = FUNC1(rdev->pdev, 0);
	/* Setup GPU memory space */
	rdev->mc.mc_vram_size = FUNC0(CONFIG_MEMSIZE);
	rdev->mc.real_vram_size = FUNC0(CONFIG_MEMSIZE);
	rdev->mc.visible_vram_size = rdev->mc.aper_size;
	FUNC3(rdev, &rdev->mc);

	if (rdev->flags & RADEON_IS_IGP) {
		FUNC6(rdev);
		rdev->mc.igp_sideport_enabled = FUNC4(rdev);
	}
	FUNC5(rdev);
	return 0;
}