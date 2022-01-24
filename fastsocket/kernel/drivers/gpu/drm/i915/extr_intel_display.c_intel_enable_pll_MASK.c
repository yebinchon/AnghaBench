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
typedef  int /*<<< orphan*/  u32 ;
struct drm_i915_private {int /*<<< orphan*/  dev; TYPE_1__* info; } ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;
struct TYPE_2__ {int gen; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  DPLL_VCO_ENABLE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static void FUNC10(struct drm_i915_private *dev_priv, enum pipe pipe)
{
	int reg;
	u32 val;

	/* No really, not for ILK+ */
	FUNC0(!FUNC6(dev_priv->dev) && dev_priv->info->gen >= 5);

	/* PLL is protected by panel, make sure we can write it */
	if (FUNC5(dev_priv->dev) && !FUNC4(dev_priv->dev))
		FUNC8(dev_priv, pipe);

	reg = FUNC1(pipe);
	val = FUNC2(reg);
	val |= DPLL_VCO_ENABLE;

	/* We do this three times for luck */
	FUNC3(reg, val);
	FUNC7(reg);
	FUNC9(150); /* wait for warmup */
	FUNC3(reg, val);
	FUNC7(reg);
	FUNC9(150); /* wait for warmup */
	FUNC3(reg, val);
	FUNC7(reg);
	FUNC9(150); /* wait for warmup */
}