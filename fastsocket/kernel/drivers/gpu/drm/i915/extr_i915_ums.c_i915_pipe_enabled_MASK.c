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
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 int DPLL_VCO_ENABLE ; 
 scalar_t__ FUNC0 (struct drm_device*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int PIPE_A ; 
 int /*<<< orphan*/  _DPLL_A ; 
 int /*<<< orphan*/  _DPLL_B ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static bool FUNC3(struct drm_device *dev, enum pipe pipe)
{
	struct drm_i915_private *dev_priv = dev->dev_private;
	u32	dpll_reg;

	/* On IVB, 3rd pipe shares PLL with another one */
	if (pipe > 1)
		return false;

	if (FUNC0(dev))
		dpll_reg = FUNC2(pipe);
	else
		dpll_reg = (pipe == PIPE_A) ? _DPLL_A : _DPLL_B;

	return (FUNC1(dpll_reg) & DPLL_VCO_ENABLE);
}