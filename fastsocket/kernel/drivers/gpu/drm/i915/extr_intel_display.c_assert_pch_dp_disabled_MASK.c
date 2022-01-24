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
 int DP_PIPEB_SELECT ; 
 int DP_PORT_EN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct drm_i915_private *dev_priv,
				   enum pipe pipe, int reg, u32 port_sel)
{
	u32 val = FUNC1(reg);
	FUNC2(FUNC3(dev_priv, pipe, port_sel, val),
	     "PCH DP (0x%08x) enabled on transcoder %c, should be disabled\n",
	     reg, FUNC4(pipe));

	FUNC2(FUNC0(dev_priv->dev) && (val & DP_PORT_EN) == 0
	     && (val & DP_PIPEB_SELECT),
	     "IBX PCH dp port still using transcoder B\n");
}