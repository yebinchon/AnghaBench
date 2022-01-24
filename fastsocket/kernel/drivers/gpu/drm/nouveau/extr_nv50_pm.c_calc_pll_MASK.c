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
struct TYPE_2__ {scalar_t__ max_freq; } ;
struct nvbios_pll {int /*<<< orphan*/  refclk; TYPE_1__ vco2; } ;
struct nouveau_pll_vals {int N1; int M1; int log2P; } ;
struct nouveau_device {int dummy; } ;
struct nouveau_clock {int (* pll_calc ) (struct nouveau_clock*,struct nvbios_pll*,int,struct nouveau_pll_vals*) ;} ;
struct nouveau_bios {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 struct nouveau_bios* FUNC0 (struct nouveau_device*) ; 
 struct nouveau_clock* FUNC1 (struct nouveau_device*) ; 
 struct nouveau_device* FUNC2 (struct drm_device*) ; 
 int FUNC3 (struct nouveau_bios*,int,struct nvbios_pll*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*,int) ; 
 int FUNC5 (struct nouveau_clock*,struct nvbios_pll*,int,struct nouveau_pll_vals*) ; 

__attribute__((used)) static u32
FUNC6(struct drm_device *dev, u32 reg, struct nvbios_pll *pll,
	 u32 clk, int *N1, int *M1, int *log2P)
{
	struct nouveau_device *device = FUNC2(dev);
	struct nouveau_bios *bios = FUNC0(device);
	struct nouveau_clock *pclk = FUNC1(device);
	struct nouveau_pll_vals coef;
	int ret;

	ret = FUNC3(bios, reg, pll);
	if (ret)
		return 0;

	pll->vco2.max_freq = 0;
	pll->refclk = FUNC4(dev, reg);
	if (!pll->refclk)
		return 0;

	ret = pclk->pll_calc(pclk, pll, clk, &coef);
	if (ret == 0)
		return 0;

	*N1 = coef.N1;
	*M1 = coef.M1;
	*log2P = coef.log2P;
	return ret;
}