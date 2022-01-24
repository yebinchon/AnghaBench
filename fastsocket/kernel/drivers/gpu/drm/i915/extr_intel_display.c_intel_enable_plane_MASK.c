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
typedef  enum plane { ____Placeholder_plane } plane ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 int DISPLAY_PLANE_ENABLE ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct drm_i915_private *dev_priv,
			       enum plane plane, enum pipe pipe)
{
	int reg;
	u32 val;

	/* If the pipe isn't enabled, we can't pump pixels and may hang */
	FUNC3(dev_priv, pipe);

	reg = FUNC0(plane);
	val = FUNC1(reg);
	if (val & DISPLAY_PLANE_ENABLE)
		return;

	FUNC2(reg, val | DISPLAY_PLANE_ENABLE);
	FUNC4(dev_priv, plane);
	FUNC5(dev_priv->dev, pipe);
}