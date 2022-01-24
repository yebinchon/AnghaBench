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
typedef  int /*<<< orphan*/  uint32_t ;
struct drm_i915_private {int dummy; } ;
typedef  enum port { ____Placeholder_port } port ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DDI_BUF_IS_IDLE ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct drm_i915_private *dev_priv,
				    enum port port)
{
	uint32_t reg = FUNC0(port);
	int i;

	for (i = 0; i < 8; i++) {
		FUNC4(1);
		if (FUNC2(reg) & DDI_BUF_IS_IDLE)
			return;
	}
	FUNC1("Timeout waiting for DDI BUF %c idle bit\n", FUNC3(port));
}