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
typedef  int __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  ARM_IDLECT1 ; 
 int /*<<< orphan*/  ARM_IDLECT2 ; 
 int OMAP1510_BIG_SLEEP_REQUEST ; 
 int OMAP1610_IDLECT1_SLEEP_VAL ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ enable_dyn_sleep ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 int FUNC6 (int) ; 
 scalar_t__ FUNC7 () ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ) ; 

void FUNC11(void)
{
	extern __u32 arm_idlect1_mask;
	__u32 use_idlect1 = arm_idlect1_mask;
	int do_sleep = 0;

	FUNC3();
	FUNC1();
	if (FUNC5()) {
		FUNC2();
		FUNC4();
		return;
	}

#ifdef CONFIG_OMAP_MPU_TIMER
#warning Enable 32kHz OS timer in order to allow sleep states in idle
	use_idlect1 = use_idlect1 & ~(1 << 9);
#else

	while (enable_dyn_sleep) {

#ifdef CONFIG_CBUS_TAHVO_USB
		extern int vbus_active;
		/* Clock requirements? */
		if (vbus_active)
			break;
#endif
		do_sleep = 1;
		break;
	}

#endif

#ifdef CONFIG_OMAP_DM_TIMER
	use_idlect1 = omap_dm_timer_modify_idlect_mask(use_idlect1);
#endif

	if (FUNC7())
		use_idlect1 &= ~(1 << 6);

	/* We should be able to remove the do_sleep variable and multiple
	 * tests above as soon as drivers, timer and DMA code have been fixed.
	 * Even the sleep block count should become obsolete. */
	if ((use_idlect1 != ~0) || !do_sleep) {

		__u32 saved_idlect1 = FUNC8(ARM_IDLECT1);
		if (FUNC0())
			use_idlect1 &= OMAP1510_BIG_SLEEP_REQUEST;
		else
			use_idlect1 &= OMAP1610_IDLECT1_SLEEP_VAL;
		FUNC10(use_idlect1, ARM_IDLECT1);
		__asm__ volatile ("mcr	p15, 0, r0, c7, c0, 4");
		FUNC10(saved_idlect1, ARM_IDLECT1);

		FUNC2();
		FUNC4();
		return;
	}
	FUNC9(FUNC8(ARM_IDLECT1),
			  FUNC8(ARM_IDLECT2));

	FUNC2();
	FUNC4();
}