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
 int DISPLAY_PLANE_ENABLE ; 
 int DISPPLANE_SEL_PIPE_MASK ; 
 int DISPPLANE_SEL_PIPE_SHIFT ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct drm_i915_private *dev_priv,
				   enum pipe pipe)
{
	int reg, i;
	u32 val;
	int cur_pipe;

	/* Planes are fixed to pipes on ILK+ */
	if (FUNC1(dev_priv->dev)) {
		reg = FUNC0(pipe);
		val = FUNC2(reg);
		FUNC3((val & DISPLAY_PLANE_ENABLE),
		     "plane %c assertion failure, should be disabled but not\n",
		     FUNC5(pipe));
		return;
	}

	/* Need to check both planes against the pipe */
	for (i = 0; i < 2; i++) {
		reg = FUNC0(i);
		val = FUNC2(reg);
		cur_pipe = (val & DISPPLANE_SEL_PIPE_MASK) >>
			DISPPLANE_SEL_PIPE_SHIFT;
		FUNC3((val & DISPLAY_PLANE_ENABLE) && pipe == cur_pipe,
		     "plane %c assertion failure, should be off on pipe %c but is still active\n",
		     FUNC5(i), FUNC4(pipe));
	}
}