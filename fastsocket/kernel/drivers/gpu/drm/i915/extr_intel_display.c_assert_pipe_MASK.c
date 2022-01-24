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
struct drm_i915_private {int quirks; int /*<<< orphan*/  dev; } ;
typedef  enum transcoder { ____Placeholder_transcoder } transcoder ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 int HSW_PWR_WELL_DRIVER ; 
 int HSW_PWR_WELL_ENABLE ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int PIPECONF_ENABLE ; 
 int PIPE_A ; 
 int QUIRK_PIPEA_FORCE ; 
 int TRANSCODER_EDP ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

void FUNC7(struct drm_i915_private *dev_priv,
		 enum pipe pipe, bool state)
{
	int reg;
	u32 val;
	bool cur_state;
	enum transcoder cpu_transcoder = FUNC4(dev_priv,
								      pipe);

	/* if we need the pipe A quirk it must be always on */
	if (pipe == PIPE_A && dev_priv->quirks & QUIRK_PIPEA_FORCE)
		state = true;

	if (FUNC1(dev_priv->dev) && cpu_transcoder != TRANSCODER_EDP &&
	    !(FUNC0(HSW_PWR_WELL_DRIVER) & HSW_PWR_WELL_ENABLE)) {
		cur_state = false;
	} else {
		reg = FUNC2(cpu_transcoder);
		val = FUNC0(reg);
		cur_state = !!(val & PIPECONF_ENABLE);
	}

	FUNC3(cur_state != state,
	     "pipe %c assertion failure (expected %s, current %s)\n",
	     FUNC5(pipe), FUNC6(state), FUNC6(cur_state));
}