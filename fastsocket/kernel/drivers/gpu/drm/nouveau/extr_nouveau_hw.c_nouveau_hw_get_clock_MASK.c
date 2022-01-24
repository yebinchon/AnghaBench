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
struct nouveau_pll_vals {int dummy; } ;
struct drm_device {int pci_device; } ;
typedef  enum nvbios_pll_type { ____Placeholder_nvbios_pll_type } nvbios_pll_type ;

/* Variables and functions */
 int CHIPSET_NFORCE ; 
 int CHIPSET_NFORCE2 ; 
 int PLL_MEMORY ; 
 int FUNC0 (struct drm_device*,int,struct nouveau_pll_vals*) ; 
 int FUNC1 (struct nouveau_pll_vals*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int*) ; 

int
FUNC4(struct drm_device *dev, enum nvbios_pll_type plltype)
{
	struct nouveau_pll_vals pllvals;
	int ret;

	if (plltype == PLL_MEMORY &&
	    (dev->pci_device & 0x0ff0) == CHIPSET_NFORCE) {
		uint32_t mpllP;

		FUNC3(FUNC2(0, 3), 0x6c, &mpllP);
		if (!mpllP)
			mpllP = 4;

		return 400000 / mpllP;
	} else
	if (plltype == PLL_MEMORY &&
	    (dev->pci_device & 0xff0) == CHIPSET_NFORCE2) {
		uint32_t clock;

		FUNC3(FUNC2(0, 5), 0x4c, &clock);
		return clock;
	}

	ret = FUNC0(dev, plltype, &pllvals);
	if (ret)
		return ret;

	return FUNC1(&pllvals);
}