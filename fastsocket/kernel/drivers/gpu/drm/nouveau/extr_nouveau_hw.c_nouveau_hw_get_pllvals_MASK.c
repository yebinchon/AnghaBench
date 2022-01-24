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
struct nvbios_pll {int reg; int /*<<< orphan*/  refclk; } ;
struct nouveau_pll_vals {int /*<<< orphan*/  refclk; } ;
struct nouveau_drm {int /*<<< orphan*/  device; } ;
struct nouveau_device {int card_type; } ;
struct nouveau_bios {int dummy; } ;
struct drm_device {int dummy; } ;
typedef  enum nvbios_pll_type { ____Placeholder_nvbios_pll_type } nvbios_pll_type ;

/* Variables and functions */
 int ENOENT ; 
 int FUNC0 (struct drm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NV_PRAMDAC_580 ; 
 int NV_PRAMDAC_VPLL_COEFF ; 
 int NV_RAMDAC_580_VPLL1_ACTIVE ; 
 int NV_RAMDAC_580_VPLL2_ACTIVE ; 
 int NV_RAMDAC_VPLL2 ; 
 struct nouveau_bios* FUNC1 (struct nouveau_device*) ; 
 struct nouveau_drm* FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*,int,int,int,struct nouveau_pll_vals*) ; 
 struct nouveau_device* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct nouveau_device*,int) ; 
 scalar_t__ FUNC6 (struct drm_device*) ; 
 int FUNC7 (struct nouveau_bios*,int,struct nvbios_pll*) ; 

int
FUNC8(struct drm_device *dev, enum nvbios_pll_type plltype,
		       struct nouveau_pll_vals *pllvals)
{
	struct nouveau_drm *drm = FUNC2(dev);
	struct nouveau_device *device = FUNC4(drm->device);
	struct nouveau_bios *bios = FUNC1(device);
	uint32_t reg1, pll1, pll2 = 0;
	struct nvbios_pll pll_lim;
	int ret;

	ret = FUNC7(bios, plltype, &pll_lim);
	if (ret || !(reg1 = pll_lim.reg))
		return -ENOENT;

	pll1 = FUNC5(device, reg1);
	if (reg1 <= 0x405c)
		pll2 = FUNC5(device, reg1 + 4);
	else if (FUNC6(dev)) {
		uint32_t reg2 = reg1 + (reg1 == NV_RAMDAC_VPLL2 ? 0x5c : 0x70);

		pll2 = FUNC5(device, reg2);
	}

	if (FUNC4(drm->device)->card_type == 0x40 && reg1 >= NV_PRAMDAC_VPLL_COEFF) {
		uint32_t ramdac580 = FUNC0(dev, 0, NV_PRAMDAC_580);

		/* check whether vpll has been forced into single stage mode */
		if (reg1 == NV_PRAMDAC_VPLL_COEFF) {
			if (ramdac580 & NV_RAMDAC_580_VPLL1_ACTIVE)
				pll2 = 0;
		} else
			if (ramdac580 & NV_RAMDAC_580_VPLL2_ACTIVE)
				pll2 = 0;
	}

	FUNC3(dev, reg1, pll1, pll2, pllvals);
	pllvals->refclk = pll_lim.refclk;
	return 0;
}