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
struct drm_i915_private {int /*<<< orphan*/  dpio_lock; } ;

/* Variables and functions */
 int DPIO_BUSY ; 
 int DPIO_BYTE ; 
 int /*<<< orphan*/  DPIO_DATA ; 
 int DPIO_OP_READ ; 
 int /*<<< orphan*/  DPIO_PKT ; 
 int DPIO_PORTID ; 
 int /*<<< orphan*/  DPIO_REG ; 
 int DPIO_RID ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int,int) ; 

u32 FUNC6(struct drm_i915_private *dev_priv, int reg)
{
	FUNC3(!FUNC4(&dev_priv->dpio_lock));

	if (FUNC5((FUNC1(DPIO_PKT) & DPIO_BUSY) == 0, 100)) {
		FUNC0("DPIO idle wait timed out\n");
		return 0;
	}

	FUNC2(DPIO_REG, reg);
	FUNC2(DPIO_PKT, DPIO_RID | DPIO_OP_READ | DPIO_PORTID |
		   DPIO_BYTE);
	if (FUNC5((FUNC1(DPIO_PKT) & DPIO_BUSY) == 0, 100)) {
		FUNC0("DPIO read wait timed out\n");
		return 0;
	}

	return FUNC1(DPIO_DATA);
}