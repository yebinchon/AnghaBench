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
typedef  int u16 ;
struct drm_i915_private {int /*<<< orphan*/  dpio_lock; } ;
typedef  enum intel_sbi_destination { ____Placeholder_intel_sbi_destination } intel_sbi_destination ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SBI_ADDR ; 
 int SBI_BUSY ; 
 int SBI_CTL_DEST_ICLK ; 
 int SBI_CTL_DEST_MPHY ; 
 int SBI_CTL_OP_CRRD ; 
 int SBI_CTL_OP_IORD ; 
 int /*<<< orphan*/  SBI_CTL_STAT ; 
 int /*<<< orphan*/  SBI_DATA ; 
 int SBI_ICLK ; 
 int SBI_RESPONSE_FAIL ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int,int) ; 

__attribute__((used)) static u32
FUNC6(struct drm_i915_private *dev_priv, u16 reg,
	       enum intel_sbi_destination destination)
{
	u32 value = 0;
	FUNC3(!FUNC4(&dev_priv->dpio_lock));

	if (FUNC5((FUNC1(SBI_CTL_STAT) & SBI_BUSY) == 0,
				100)) {
		FUNC0("timeout waiting for SBI to become ready\n");
		return 0;
	}

	FUNC2(SBI_ADDR, (reg << 16));

	if (destination == SBI_ICLK)
		value = SBI_CTL_DEST_ICLK | SBI_CTL_OP_CRRD;
	else
		value = SBI_CTL_DEST_MPHY | SBI_CTL_OP_IORD;
	FUNC2(SBI_CTL_STAT, value | SBI_BUSY);

	if (FUNC5((FUNC1(SBI_CTL_STAT) & (SBI_BUSY | SBI_RESPONSE_FAIL)) == 0,
				100)) {
		FUNC0("timeout waiting for SBI to complete read transaction\n");
		return 0;
	}

	return FUNC1(SBI_DATA);
}