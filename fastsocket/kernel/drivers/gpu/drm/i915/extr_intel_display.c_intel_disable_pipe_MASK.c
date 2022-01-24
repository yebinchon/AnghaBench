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
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int FUNC2 (int) ; 
 int PIPECONF_ENABLE ; 
 int PIPE_A ; 
 int QUIRK_PIPEA_FORCE ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*,int) ; 
 int FUNC4 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct drm_i915_private *dev_priv,
			       enum pipe pipe)
{
	enum transcoder cpu_transcoder = FUNC4(dev_priv,
								      pipe);
	int reg;
	u32 val;

	/*
	 * Make sure planes won't keep trying to pump pixels to us,
	 * or we might hang the display.
	 */
	FUNC3(dev_priv, pipe);

	/* Don't disable pipe A or pipe A PLLs if needed */
	if (pipe == PIPE_A && (dev_priv->quirks & QUIRK_PIPEA_FORCE))
		return;

	reg = FUNC2(cpu_transcoder);
	val = FUNC0(reg);
	if ((val & PIPECONF_ENABLE) == 0)
		return;

	FUNC1(reg, val & ~PIPECONF_ENABLE);
	FUNC5(dev_priv->dev, pipe);
}