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
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FDI_RX_PLL_ENABLE ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 

__attribute__((used)) static void FUNC3(struct drm_i915_private *dev_priv,
				      enum pipe pipe)
{
	int reg;
	u32 val;

	reg = FUNC0(pipe);
	val = FUNC1(reg);
	FUNC2(!(val & FDI_RX_PLL_ENABLE), "FDI RX PLL assertion failure, should be active but is disabled\n");
}