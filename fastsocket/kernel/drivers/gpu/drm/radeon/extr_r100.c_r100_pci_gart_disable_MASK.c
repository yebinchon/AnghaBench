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
typedef  int uint32_t ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RADEON_AIC_CNTL ; 
 int /*<<< orphan*/  RADEON_AIC_HI_ADDR ; 
 int /*<<< orphan*/  RADEON_AIC_LO_ADDR ; 
 int RADEON_DIS_OUT_OF_PCI_GART_ACCESS ; 
 int RADEON_PCIGART_TRANSLATE_EN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

void FUNC2(struct radeon_device *rdev)
{
	uint32_t tmp;

	/* discard memory request outside of configured range */
	tmp = FUNC0(RADEON_AIC_CNTL) | RADEON_DIS_OUT_OF_PCI_GART_ACCESS;
	FUNC1(RADEON_AIC_CNTL, tmp & ~RADEON_PCIGART_TRANSLATE_EN);
	FUNC1(RADEON_AIC_LO_ADDR, 0);
	FUNC1(RADEON_AIC_HI_ADDR, 0);
}