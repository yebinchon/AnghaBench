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
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
typedef  enum transcoder { ____Placeholder_transcoder } transcoder ;
struct TYPE_2__ {int gen; } ;

/* Variables and functions */
 int DSL_LINEMASK_GEN2 ; 
 int DSL_LINEMASK_GEN3 ; 
 int FUNC0 (int) ; 
 int I965_PIPECONF_ACTIVE ; 
 TYPE_1__* FUNC1 (struct drm_device*) ; 
 scalar_t__ FUNC2 (struct drm_device*) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 int FUNC6 (struct drm_i915_private*,int) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 unsigned long FUNC8 (int) ; 
 scalar_t__ FUNC9 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC10 (int,int) ; 

void FUNC11(struct drm_device *dev, int pipe)
{
	struct drm_i915_private *dev_priv = dev->dev_private;
	enum transcoder cpu_transcoder = FUNC6(dev_priv,
								      pipe);

	if (FUNC1(dev)->gen >= 4) {
		int reg = FUNC3(cpu_transcoder);

		/* Wait for the Pipe State to go off */
		if (FUNC10((FUNC0(reg) & I965_PIPECONF_ACTIVE) == 0,
			     100))
			FUNC5(1, "pipe_off wait timed out\n");
	} else {
		u32 last_line, line_mask;
		int reg = FUNC4(pipe);
		unsigned long timeout = jiffies + FUNC8(100);

		if (FUNC2(dev))
			line_mask = DSL_LINEMASK_GEN2;
		else
			line_mask = DSL_LINEMASK_GEN3;

		/* Wait for the display line to settle */
		do {
			last_line = FUNC0(reg) & line_mask;
			FUNC7(5);
		} while (((FUNC0(reg) & line_mask) != last_line) &&
			 FUNC9(timeout, jiffies));
		if (FUNC9(jiffies, timeout))
			FUNC5(1, "pipe_off wait timed out\n");
	}
}