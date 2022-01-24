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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int CURSOR_MODE ; 
 int CURSOR_MODE_64_ARGB_AX ; 
 int /*<<< orphan*/  FW_BLC_SELF ; 
 int FW_BLC_SELF_EN ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5(struct drm_i915_private *dev_priv, enum pipe pipe)
{
	u32 cntl = FUNC2(FUNC1(pipe));

	if ((cntl & CURSOR_MODE) == 0) {
		u32 fw_bcl_self = FUNC2(FW_BLC_SELF);

		FUNC3(FW_BLC_SELF, fw_bcl_self & ~FW_BLC_SELF_EN);
		FUNC3(FUNC1(pipe), CURSOR_MODE_64_ARGB_AX);
		FUNC4(dev_priv->dev, pipe);
		FUNC3(FUNC1(pipe), cntl);
		FUNC3(FUNC0(pipe), FUNC2(FUNC0(pipe)));
		FUNC3(FW_BLC_SELF, fw_bcl_self);
	}
}