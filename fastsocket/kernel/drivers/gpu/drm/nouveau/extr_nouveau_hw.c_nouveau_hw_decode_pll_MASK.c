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
typedef  int uint32_t ;
struct nouveau_pll_vals {int log2P; int N2; int M2; int NM1; int NM2; int M1; } ;
struct nouveau_drm {int /*<<< orphan*/  device; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {int chipset; } ;

/* Variables and functions */
 int NV30_RAMDAC_ENABLE_VCO2 ; 
 int NV31_RAMDAC_ENABLE_VCO2 ; 
 struct nouveau_drm* FUNC0 (struct drm_device*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct drm_device*) ; 

__attribute__((used)) static void
FUNC3(struct drm_device *dev, uint32_t reg1, uint32_t pll1,
		      uint32_t pll2, struct nouveau_pll_vals *pllvals)
{
	struct nouveau_drm *drm = FUNC0(dev);

	/* to force parsing as single stage (i.e. nv40 vplls) pass pll2 as 0 */

	/* log2P is & 0x7 as never more than 7, and nv30/35 only uses 3 bits */
	pllvals->log2P = (pll1 >> 16) & 0x7;
	pllvals->N2 = pllvals->M2 = 1;

	if (reg1 <= 0x405c) {
		pllvals->NM1 = pll2 & 0xffff;
		/* single stage NVPLL and VPLLs use 1 << 8, MPLL uses 1 << 12 */
		if (!(pll1 & 0x1100))
			pllvals->NM2 = pll2 >> 16;
	} else {
		pllvals->NM1 = pll1 & 0xffff;
		if (FUNC2(dev) && pll2 & NV31_RAMDAC_ENABLE_VCO2)
			pllvals->NM2 = pll2 & 0xffff;
		else if (FUNC1(drm->device)->chipset == 0x30 || FUNC1(drm->device)->chipset == 0x35) {
			pllvals->M1 &= 0xf; /* only 4 bits */
			if (pll1 & NV30_RAMDAC_ENABLE_VCO2) {
				pllvals->M2 = (pll1 >> 4) & 0x7;
				pllvals->N2 = ((pll1 >> 21) & 0x18) |
					      ((pll1 >> 19) & 0x7);
			}
		}
	}
}