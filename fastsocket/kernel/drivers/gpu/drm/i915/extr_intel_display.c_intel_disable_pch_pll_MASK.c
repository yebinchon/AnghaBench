#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct intel_pch_pll {scalar_t__ refcount; int pll_reg; scalar_t__ active; int on; } ;
struct TYPE_7__ {int /*<<< orphan*/  id; } ;
struct TYPE_8__ {TYPE_3__ base; TYPE_1__* dev; } ;
struct intel_crtc {int /*<<< orphan*/  pipe; TYPE_4__ base; struct intel_pch_pll* pch_pll; } ;
struct drm_i915_private {TYPE_2__* info; } ;
struct TYPE_6__ {int gen; } ;
struct TYPE_5__ {struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DPLL_VCO_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_private*,struct intel_pch_pll*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_i915_private*,struct intel_pch_pll*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static void FUNC10(struct intel_crtc *intel_crtc)
{
	struct drm_i915_private *dev_priv = intel_crtc->base.dev->dev_private;
	struct intel_pch_pll *pll = intel_crtc->pch_pll;
	int reg;
	u32 val;

	/* PCH only available on ILK+ */
	FUNC0(dev_priv->info->gen < 5);
	if (pll == NULL)
	       return;

	if (FUNC5(pll->refcount == 0))
		return;

	FUNC1("disable PCH PLL %x (active %d, on? %d) for crtc %d\n",
		      pll->pll_reg, pll->active, pll->on,
		      intel_crtc->base.base.id);

	if (FUNC5(pll->active == 0)) {
		FUNC6(dev_priv, pll, NULL);
		return;
	}

	if (--pll->active) {
		FUNC7(dev_priv, pll, NULL);
		return;
	}

	FUNC1("disabling PCH PLL %x\n", pll->pll_reg);

	/* Make sure transcoder isn't still depending on us */
	FUNC8(dev_priv, intel_crtc->pipe);

	reg = pll->pll_reg;
	val = FUNC2(reg);
	val &= ~DPLL_VCO_ENABLE;
	FUNC3(reg, val);
	FUNC4(reg);
	FUNC9(200);

	pll->on = false;
}