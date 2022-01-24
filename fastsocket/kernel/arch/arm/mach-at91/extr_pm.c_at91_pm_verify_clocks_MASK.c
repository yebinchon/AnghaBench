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
typedef  void* u32 ;

/* Variables and functions */
 unsigned long AT91CAP9_PMC_UHP ; 
 unsigned long AT91RM9200_PMC_UDP ; 
 unsigned long AT91RM9200_PMC_UHP ; 
 unsigned long AT91SAM926x_PMC_UDP ; 
 unsigned long AT91SAM926x_PMC_UHP ; 
 void* AT91_PMC_CSS ; 
 void* AT91_PMC_CSS_SLOW ; 
 int AT91_PMC_PCK0 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  AT91_PMC_SCSR ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ FUNC7 () ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 

__attribute__((used)) static int FUNC10(void)
{
	unsigned long scsr;
	int i;

	scsr = FUNC1(AT91_PMC_SCSR);

	/* USB must not be using PLLB */
	if (FUNC3()) {
		if ((scsr & (AT91RM9200_PMC_UHP | AT91RM9200_PMC_UDP)) != 0) {
			FUNC9("AT91: PM - Suspend-to-RAM with USB still active\n");
			return 0;
		}
	} else if (FUNC4() || FUNC5() || FUNC6()
			|| FUNC8() || FUNC7()) {
		if ((scsr & (AT91SAM926x_PMC_UHP | AT91SAM926x_PMC_UDP)) != 0) {
			FUNC9("AT91: PM - Suspend-to-RAM with USB still active\n");
			return 0;
		}
	} else if (FUNC2()) {
		if ((scsr & AT91CAP9_PMC_UHP) != 0) {
			FUNC9("AT91: PM - Suspend-to-RAM with USB still active\n");
			return 0;
		}
	}

#ifdef CONFIG_AT91_PROGRAMMABLE_CLOCKS
	/* PCK0..PCK3 must be disabled, or configured to use clk32k */
	for (i = 0; i < 4; i++) {
		u32 css;

		if ((scsr & (AT91_PMC_PCK0 << i)) == 0)
			continue;

		css = at91_sys_read(AT91_PMC_PCKR(i)) & AT91_PMC_CSS;
		if (css != AT91_PMC_CSS_SLOW) {
			pr_err("AT91: PM - Suspend-to-RAM with PCK%d src %d\n", i, css);
			return 0;
		}
	}
#endif

	return 1;
}