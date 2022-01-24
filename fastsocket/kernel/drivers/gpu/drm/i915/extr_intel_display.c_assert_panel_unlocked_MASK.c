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
typedef  int u32 ;
struct drm_i915_private {int /*<<< orphan*/  dev; } ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int LVDS ; 
 int LVDS_PIPEB_SELECT ; 
 int PANEL_POWER_ON ; 
 int PANEL_UNLOCK_REGS ; 
 int PCH_LVDS ; 
 int PCH_PP_CONTROL ; 
 int PIPE_A ; 
 int PIPE_B ; 
 int PP_CONTROL ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct drm_i915_private *dev_priv,
				  enum pipe pipe)
{
	int pp_reg, lvds_reg;
	u32 val;
	enum pipe panel_pipe = PIPE_A;
	bool locked = true;

	if (FUNC0(dev_priv->dev)) {
		pp_reg = PCH_PP_CONTROL;
		lvds_reg = PCH_LVDS;
	} else {
		pp_reg = PP_CONTROL;
		lvds_reg = LVDS;
	}

	val = FUNC1(pp_reg);
	if (!(val & PANEL_POWER_ON) ||
	    ((val & PANEL_UNLOCK_REGS) == PANEL_UNLOCK_REGS))
		locked = false;

	if (FUNC1(lvds_reg) & LVDS_PIPEB_SELECT)
		panel_pipe = PIPE_B;

	FUNC2(panel_pipe == pipe && locked,
	     "panel assertion failure, pipe %c regs locked\n",
	     FUNC3(pipe));
}