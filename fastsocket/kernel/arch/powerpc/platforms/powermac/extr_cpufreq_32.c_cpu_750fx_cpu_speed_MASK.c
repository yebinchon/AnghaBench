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

/* Variables and functions */
 int /*<<< orphan*/  PMAC_FTR_WRITE_GPIO ; 
 int /*<<< orphan*/  SPRN_HID2 ; 
 scalar_t__ has_cpu_l2lve ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  voltage_gpio ; 

__attribute__((used)) static int FUNC5(int low_speed)
{
	u32 hid2;

	if (low_speed == 0) {
		/* ramping up, set voltage first */
		FUNC4(PMAC_FTR_WRITE_GPIO, NULL, voltage_gpio, 0x05);
		/* Make sure we sleep for at least 1ms */
		FUNC0(10);

		/* tweak L2 for high voltage */
		if (has_cpu_l2lve) {
			hid2 = FUNC2(SPRN_HID2);
			hid2 &= ~0x2000;
			FUNC3(SPRN_HID2, hid2);
		}
	}
#ifdef CONFIG_6xx
	low_choose_750fx_pll(low_speed);
#endif
	if (low_speed == 1) {
		/* tweak L2 for low voltage */
		if (has_cpu_l2lve) {
			hid2 = FUNC2(SPRN_HID2);
			hid2 |= 0x2000;
			FUNC3(SPRN_HID2, hid2);
		}

		/* ramping down, set voltage last */
		FUNC4(PMAC_FTR_WRITE_GPIO, NULL, voltage_gpio, 0x04);
		FUNC0(10);
	}

	return 0;
}