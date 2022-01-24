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
typedef  int uint32_t ;
struct TYPE_3__ {int table_addr; int ready; } ;
struct TYPE_4__ {int gtt_start; int gtt_end; int gtt_size; } ;
struct radeon_device {TYPE_1__ gart; TYPE_2__ mc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned int,unsigned long long) ; 
 int /*<<< orphan*/  RADEON_AIC_CNTL ; 
 int /*<<< orphan*/  RADEON_AIC_HI_ADDR ; 
 int /*<<< orphan*/  RADEON_AIC_LO_ADDR ; 
 int /*<<< orphan*/  RADEON_AIC_PT_BASE ; 
 int RADEON_DIS_OUT_OF_PCI_GART_ACCESS ; 
 int RADEON_PCIGART_TRANSLATE_EN ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*) ; 

int FUNC5(struct radeon_device *rdev)
{
	uint32_t tmp;

	FUNC4(rdev);
	/* discard memory request outside of configured range */
	tmp = FUNC1(RADEON_AIC_CNTL) | RADEON_DIS_OUT_OF_PCI_GART_ACCESS;
	FUNC2(RADEON_AIC_CNTL, tmp);
	/* set address range for PCI address translate */
	FUNC2(RADEON_AIC_LO_ADDR, rdev->mc.gtt_start);
	FUNC2(RADEON_AIC_HI_ADDR, rdev->mc.gtt_end);
	/* set PCI GART page-table base address */
	FUNC2(RADEON_AIC_PT_BASE, rdev->gart.table_addr);
	tmp = FUNC1(RADEON_AIC_CNTL) | RADEON_PCIGART_TRANSLATE_EN;
	FUNC2(RADEON_AIC_CNTL, tmp);
	FUNC3(rdev);
	FUNC0("PCI GART of %uM enabled (table at 0x%016llX).\n",
		 (unsigned)(rdev->mc.gtt_size >> 20),
		 (unsigned long long)rdev->gart.table_addr);
	rdev->gart.ready = true;
	return 0;
}