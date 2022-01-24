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
 int SBI_CTL_OP_CRWR ; 
 int SBI_CTL_OP_IOWR ; 
 int /*<<< orphan*/  SBI_CTL_STAT ; 
 int /*<<< orphan*/  SBI_DATA ; 
 int SBI_ICLK ; 
 int SBI_RESPONSE_FAIL ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int,int) ; 

__attribute__((used)) static void
FUNC6(struct drm_i915_private *dev_priv, u16 reg, u32 value,
		enum intel_sbi_destination destination)
{
	u32 tmp;

	FUNC3(!FUNC4(&dev_priv->dpio_lock));

	if (FUNC5((FUNC1(SBI_CTL_STAT) & SBI_BUSY) == 0,
				100)) {
		FUNC0("timeout waiting for SBI to become ready\n");
		return;
	}

	FUNC2(SBI_ADDR, (reg << 16));
	FUNC2(SBI_DATA, value);

	if (destination == SBI_ICLK)
		tmp = SBI_CTL_DEST_ICLK | SBI_CTL_OP_CRWR;
	else
		tmp = SBI_CTL_DEST_MPHY | SBI_CTL_OP_IOWR;
	FUNC2(SBI_CTL_STAT, SBI_BUSY | tmp);

	if (FUNC5((FUNC1(SBI_CTL_STAT) & (SBI_BUSY | SBI_RESPONSE_FAIL)) == 0,
				100)) {
		FUNC0("timeout waiting for SBI to complete write transaction\n");
		return;
	}
}