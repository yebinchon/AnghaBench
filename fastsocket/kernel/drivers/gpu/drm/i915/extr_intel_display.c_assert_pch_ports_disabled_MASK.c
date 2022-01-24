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
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 int /*<<< orphan*/  HDMIB ; 
 int /*<<< orphan*/  HDMIC ; 
 int /*<<< orphan*/  HDMID ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int PCH_ADPA ; 
 int /*<<< orphan*/  PCH_DP_B ; 
 int /*<<< orphan*/  PCH_DP_C ; 
 int /*<<< orphan*/  PCH_DP_D ; 
 int PCH_LVDS ; 
 int /*<<< orphan*/  TRANS_DP_PORT_SEL_B ; 
 int /*<<< orphan*/  TRANS_DP_PORT_SEL_C ; 
 int /*<<< orphan*/  TRANS_DP_PORT_SEL_D ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct drm_i915_private *dev_priv,
				      enum pipe pipe)
{
	int reg;
	u32 val;

	FUNC3(dev_priv, pipe, PCH_DP_B, TRANS_DP_PORT_SEL_B);
	FUNC3(dev_priv, pipe, PCH_DP_C, TRANS_DP_PORT_SEL_C);
	FUNC3(dev_priv, pipe, PCH_DP_D, TRANS_DP_PORT_SEL_D);

	reg = PCH_ADPA;
	val = FUNC0(reg);
	FUNC1(FUNC2(dev_priv, pipe, val),
	     "PCH VGA enabled on transcoder %c, should be disabled\n",
	     FUNC6(pipe));

	reg = PCH_LVDS;
	val = FUNC0(reg);
	FUNC1(FUNC5(dev_priv, pipe, val),
	     "PCH LVDS enabled on transcoder %c, should be disabled\n",
	     FUNC6(pipe));

	FUNC4(dev_priv, pipe, HDMIB);
	FUNC4(dev_priv, pipe, HDMIC);
	FUNC4(dev_priv, pipe, HDMID);
}