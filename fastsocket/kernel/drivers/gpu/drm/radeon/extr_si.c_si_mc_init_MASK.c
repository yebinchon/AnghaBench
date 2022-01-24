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
struct TYPE_2__ {int vram_is_ddr; int vram_width; unsigned long long mc_vram_size; unsigned long long real_vram_size; int /*<<< orphan*/  aper_size; int /*<<< orphan*/  visible_vram_size; int /*<<< orphan*/  aper_base; } ;
struct radeon_device {TYPE_1__ mc; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int CHANSIZE_MASK ; 
 int CHANSIZE_OVERRIDE ; 
 int /*<<< orphan*/  CONFIG_MEMSIZE ; 
 int /*<<< orphan*/  MC_ARB_RAMCFG ; 
 int /*<<< orphan*/  MC_SHARED_CHMAP ; 
 int NOOFCHAN_MASK ; 
 int NOOFCHAN_SHIFT ; 
 unsigned long long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*,TYPE_1__*) ; 

__attribute__((used)) static int FUNC5(struct radeon_device *rdev)
{
	u32 tmp;
	int chansize, numchan;

	/* Get VRAM informations */
	rdev->mc.vram_is_ddr = true;
	tmp = FUNC0(MC_ARB_RAMCFG);
	if (tmp & CHANSIZE_OVERRIDE) {
		chansize = 16;
	} else if (tmp & CHANSIZE_MASK) {
		chansize = 64;
	} else {
		chansize = 32;
	}
	tmp = FUNC0(MC_SHARED_CHMAP);
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
	case 4:
		numchan = 3;
		break;
	case 5:
		numchan = 6;
		break;
	case 6:
		numchan = 10;
		break;
	case 7:
		numchan = 12;
		break;
	case 8:
		numchan = 16;
		break;
	}
	rdev->mc.vram_width = numchan * chansize;
	/* Could aper size report 0 ? */
	rdev->mc.aper_base = FUNC2(rdev->pdev, 0);
	rdev->mc.aper_size = FUNC1(rdev->pdev, 0);
	/* size in MB on si */
	rdev->mc.mc_vram_size = FUNC0(CONFIG_MEMSIZE) * 1024ULL * 1024ULL;
	rdev->mc.real_vram_size = FUNC0(CONFIG_MEMSIZE) * 1024ULL * 1024ULL;
	rdev->mc.visible_vram_size = rdev->mc.aper_size;
	FUNC4(rdev, &rdev->mc);
	FUNC3(rdev);

	return 0;
}