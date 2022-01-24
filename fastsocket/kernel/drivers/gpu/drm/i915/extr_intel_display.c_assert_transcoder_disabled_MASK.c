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
 int FUNC1 (int) ; 
 int TRANS_ENABLE ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct drm_i915_private *dev_priv,
				       enum pipe pipe)
{
	int reg;
	u32 val;
	bool enabled;

	reg = FUNC1(pipe);
	val = FUNC0(reg);
	enabled = !!(val & TRANS_ENABLE);
	FUNC2(enabled,
	     "transcoder assertion failed, should be off on pipe %c but is still active\n",
	     FUNC3(pipe));
}