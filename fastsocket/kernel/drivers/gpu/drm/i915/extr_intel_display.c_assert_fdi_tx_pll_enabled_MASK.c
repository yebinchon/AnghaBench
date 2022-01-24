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
struct drm_i915_private {int /*<<< orphan*/  dev; TYPE_1__* info; } ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;
struct TYPE_2__ {int gen; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FDI_TX_PLL_ENABLE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 

__attribute__((used)) static void FUNC4(struct drm_i915_private *dev_priv,
				      enum pipe pipe)
{
	int reg;
	u32 val;

	/* ILK FDI PLL is always enabled */
	if (dev_priv->info->gen == 5)
		return;

	/* On Haswell, DDI ports are responsible for the FDI PLL setup */
	if (FUNC1(dev_priv->dev))
		return;

	reg = FUNC0(pipe);
	val = FUNC2(reg);
	FUNC3(!(val & FDI_TX_PLL_ENABLE), "FDI TX PLL assertion failure, should be active but is disabled\n");
}