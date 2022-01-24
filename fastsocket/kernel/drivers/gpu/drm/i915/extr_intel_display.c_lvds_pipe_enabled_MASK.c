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
 int LVDS_PIPE_MASK ; 
 int LVDS_PORT_EN ; 
 int FUNC2 (int) ; 
 int PORT_TRANS_SEL_MASK ; 

__attribute__((used)) static bool FUNC3(struct drm_i915_private *dev_priv,
			      enum pipe pipe, u32 val)
{
	if ((val & LVDS_PORT_EN) == 0)
		return false;

	if (FUNC0(dev_priv->dev)) {
		if ((val & PORT_TRANS_SEL_MASK) != FUNC2(pipe))
			return false;
	} else {
		if ((val & LVDS_PIPE_MASK) != FUNC1(pipe))
			return false;
	}
	return true;
}