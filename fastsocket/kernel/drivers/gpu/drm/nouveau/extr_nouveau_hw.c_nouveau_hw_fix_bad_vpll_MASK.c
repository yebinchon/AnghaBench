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
struct TYPE_2__ {scalar_t__ min_m; scalar_t__ max_m; scalar_t__ min_n; scalar_t__ max_n; } ;
struct nvbios_pll {scalar_t__ max_p; scalar_t__ max_p_usable; int /*<<< orphan*/  reg; TYPE_1__ vco1; } ;
struct nouveau_pll_vals {scalar_t__ M1; scalar_t__ N1; scalar_t__ log2P; } ;
struct nouveau_drm {int /*<<< orphan*/  device; } ;
struct nouveau_device {int dummy; } ;
struct nouveau_clock {int /*<<< orphan*/  (* pll_prog ) (struct nouveau_clock*,int /*<<< orphan*/ ,struct nouveau_pll_vals*) ;} ;
struct nouveau_bios {int dummy; } ;
struct drm_device {int dummy; } ;
typedef  enum nvbios_pll_type { ____Placeholder_nvbios_pll_type } nvbios_pll_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nouveau_drm*,char*,int) ; 
 int PLL_VPLL0 ; 
 int PLL_VPLL1 ; 
 struct nouveau_bios* FUNC1 (struct nouveau_device*) ; 
 struct nouveau_clock* FUNC2 (struct nouveau_device*) ; 
 struct nouveau_drm* FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*,int,struct nouveau_pll_vals*) ; 
 struct nouveau_device* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct nouveau_bios*,int,struct nvbios_pll*) ; 
 int /*<<< orphan*/  FUNC7 (struct nouveau_clock*,int /*<<< orphan*/ ,struct nouveau_pll_vals*) ; 

__attribute__((used)) static void
FUNC8(struct drm_device *dev, int head)
{
	/* the vpll on an unused head can come up with a random value, way
	 * beyond the pll limits.  for some reason this causes the chip to
	 * lock up when reading the dac palette regs, so set a valid pll here
	 * when such a condition detected.  only seen on nv11 to date
	 */

	struct nouveau_drm *drm = FUNC3(dev);
	struct nouveau_device *device = FUNC5(drm->device);
	struct nouveau_clock *clk = FUNC2(device);
	struct nouveau_bios *bios = FUNC1(device);
	struct nvbios_pll pll_lim;
	struct nouveau_pll_vals pv;
	enum nvbios_pll_type pll = head ? PLL_VPLL1 : PLL_VPLL0;

	if (FUNC6(bios, pll, &pll_lim))
		return;
	FUNC4(dev, pll, &pv);

	if (pv.M1 >= pll_lim.vco1.min_m && pv.M1 <= pll_lim.vco1.max_m &&
	    pv.N1 >= pll_lim.vco1.min_n && pv.N1 <= pll_lim.vco1.max_n &&
	    pv.log2P <= pll_lim.max_p)
		return;

	FUNC0(drm, "VPLL %d outwith limits, attempting to fix\n", head + 1);

	/* set lowest clock within static limits */
	pv.M1 = pll_lim.vco1.max_m;
	pv.N1 = pll_lim.vco1.min_n;
	pv.log2P = pll_lim.max_p_usable;
	clk->pll_prog(clk, pll_lim.reg, &pv);
}