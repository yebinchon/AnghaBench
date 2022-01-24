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
struct drm_i915_private {int dummy; } ;
typedef  enum plane { ____Placeholder_plane } plane ;

/* Variables and functions */
 int DISPLAY_PLANE_ENABLE ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct drm_i915_private *dev_priv,
			 enum plane plane, bool state)
{
	int reg;
	u32 val;
	bool cur_state;

	reg = FUNC0(plane);
	val = FUNC1(reg);
	cur_state = !!(val & DISPLAY_PLANE_ENABLE);
	FUNC2(cur_state != state,
	     "plane %c assertion failure (expected %s, current %s)\n",
	     FUNC3(plane), FUNC4(state), FUNC4(cur_state));
}