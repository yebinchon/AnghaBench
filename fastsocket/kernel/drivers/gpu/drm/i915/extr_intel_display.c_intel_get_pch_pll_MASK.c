#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct intel_pch_pll {scalar_t__ refcount; int on; int /*<<< orphan*/  pll_reg; int /*<<< orphan*/  fp0_reg; int /*<<< orphan*/  active; } ;
struct TYPE_5__ {int /*<<< orphan*/  id; } ;
struct TYPE_6__ {TYPE_2__ base; TYPE_1__* dev; } ;
struct intel_crtc {int pipe; struct intel_pch_pll* pch_pll; TYPE_3__ base; } ;
struct drm_i915_private {int num_pch_pll; struct intel_pch_pll* pch_plls; int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 int DPLL_VCO_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static struct intel_pch_pll *FUNC7(struct intel_crtc *intel_crtc, u32 dpll, u32 fp)
{
	struct drm_i915_private *dev_priv = intel_crtc->base.dev->dev_private;
	struct intel_pch_pll *pll;
	int i;

	pll = intel_crtc->pch_pll;
	if (pll) {
		FUNC1("CRTC:%d reusing existing PCH PLL %x\n",
			      intel_crtc->base.base.id, pll->pll_reg);
		goto prepare;
	}

	if (FUNC2(dev_priv->dev)) {
		/* Ironlake PCH has a fixed PLL->PCH pipe mapping. */
		i = intel_crtc->pipe;
		pll = &dev_priv->pch_plls[i];

		FUNC1("CRTC:%d using pre-allocated PCH PLL %x\n",
			      intel_crtc->base.base.id, pll->pll_reg);

		goto found;
	}

	for (i = 0; i < dev_priv->num_pch_pll; i++) {
		pll = &dev_priv->pch_plls[i];

		/* Only want to check enabled timings first */
		if (pll->refcount == 0)
			continue;

		if (dpll == (FUNC3(pll->pll_reg) & 0x7fffffff) &&
		    fp == FUNC3(pll->fp0_reg)) {
			FUNC1("CRTC:%d sharing existing PCH PLL %x (refcount %d, ative %d)\n",
				      intel_crtc->base.base.id,
				      pll->pll_reg, pll->refcount, pll->active);

			goto found;
		}
	}

	/* Ok no matching timings, maybe there's a free one? */
	for (i = 0; i < dev_priv->num_pch_pll; i++) {
		pll = &dev_priv->pch_plls[i];
		if (pll->refcount == 0) {
			FUNC1("CRTC:%d allocated PCH PLL %x\n",
				      intel_crtc->base.base.id, pll->pll_reg);
			goto found;
		}
	}

	return NULL;

found:
	intel_crtc->pch_pll = pll;
	pll->refcount++;
	FUNC0("using pll %d for pipe %d\n", i, intel_crtc->pipe);
prepare: /* separate function? */
	FUNC0("switching PLL %x off\n", pll->pll_reg);

	/* Wait for the clocks to stabilize before rewriting the regs */
	FUNC4(pll->pll_reg, dpll & ~DPLL_VCO_ENABLE);
	FUNC5(pll->pll_reg);
	FUNC6(150);

	FUNC4(pll->fp0_reg, fp);
	FUNC4(pll->pll_reg, dpll & ~DPLL_VCO_ENABLE);
	pll->on = false;
	return pll;
}