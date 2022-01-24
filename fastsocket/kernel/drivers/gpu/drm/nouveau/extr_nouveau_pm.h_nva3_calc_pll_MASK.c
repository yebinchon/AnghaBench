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
typedef  int /*<<< orphan*/  u32 ;
struct nvbios_pll {int dummy; } ;
struct nouveau_pll_vals {int N1; int M1; int log2P; } ;
struct nouveau_device {int dummy; } ;
struct nouveau_clock {int (* pll_calc ) (struct nouveau_clock*,struct nvbios_pll*,int /*<<< orphan*/ ,struct nouveau_pll_vals*) ;} ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 struct nouveau_clock* FUNC0 (struct nouveau_device*) ; 
 struct nouveau_device* FUNC1 (struct drm_device*) ; 
 int FUNC2 (struct nouveau_clock*,struct nvbios_pll*,int /*<<< orphan*/ ,struct nouveau_pll_vals*) ; 

__attribute__((used)) static inline int
FUNC3(struct drm_device *dev, struct nvbios_pll *pll, u32 freq,
	      int *N, int *fN, int *M, int *P)
{
	struct nouveau_device *device = FUNC1(dev);
	struct nouveau_clock *clk = FUNC0(device);
	struct nouveau_pll_vals pv;
	int ret;

	ret = clk->pll_calc(clk, pll, freq, &pv);
	*N = pv.N1;
	*M = pv.M1;
	*P = pv.log2P;
	return ret;
}