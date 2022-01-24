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
typedef  int suspend_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  AT91_AIC_IMR ; 
 int /*<<< orphan*/  AT91_AIC_IPR ; 
 int AT91_ID_FIQ ; 
 int AT91_ID_SYS ; 
 int /*<<< orphan*/  AT91_PMC_PCSR ; 
#define  PM_SUSPEND_MEM 130 
#define  PM_SUSPEND_ON 129 
#define  PM_SUSPEND_STANDBY 128 
 int at91_extern_irq ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  at91_slow_clock ; 
 int /*<<< orphan*/  at91_slow_clock_sz ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  (*) (),int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int target_state ; 

__attribute__((used)) static int FUNC12(suspend_state_t state)
{
	FUNC1();
	FUNC3();

	FUNC7("AT91: PM - wake mask %08x, pm state %d\n",
			/* remember all the always-wake irqs */
			(FUNC5(AT91_PMC_PCSR)
					| (1 << AT91_ID_FIQ)
					| (1 << AT91_ID_SYS)
					| (at91_extern_irq))
				& FUNC5(AT91_AIC_IMR),
			state);

	switch (state) {
		/*
		 * Suspend-to-RAM is like STANDBY plus slow clock mode, so
		 * drivers must suspend more deeply:  only the master clock
		 * controller may be using the main oscillator.
		 */
		case PM_SUSPEND_MEM:
			/*
			 * Ensure that clocks are in a valid state.
			 */
			if (!FUNC4())
				goto error;

			/*
			 * Enter slow clock mode by switching over to clk32k and
			 * turning off the main oscillator; reverse on wakeup.
			 */
			if (&slow_clock) {
#ifdef CONFIG_AT91_SLOW_CLOCK
				/* copy slow_clock handler to SRAM, and call it */
				memcpy(slow_clock, at91_slow_clock, at91_slow_clock_sz);
#endif
				FUNC11();
				break;
			} else {
				FUNC8("AT91: PM - no slow clock mode enabled ...\n");
				/* FALLTHROUGH leaving master clock alone */
			}

		/*
		 * STANDBY mode has *all* drivers suspended; ignores irqs not
		 * marked as 'wakeup' event sources; and reduces DRAM power.
		 * But otherwise it's identical to PM_SUSPEND_ON:  cpu idle, and
		 * nothing fancy done with main or cpu clocks.
		 */
		case PM_SUSPEND_STANDBY:
			/*
			 * NOTE: the Wait-for-Interrupt instruction needs to be
			 * in icache so no SDRAM accesses are needed until the
			 * wakeup IRQ occurs and self-refresh is terminated.
			 */
			asm("b 1f; .align 5; 1:");
			asm("mcr p15, 0, r0, c7, c10, 4");	/* drain write buffer */
			FUNC10();
			asm("mcr p15, 0, r0, c7, c0, 4");	/* wait for interrupt */
			FUNC9();
			break;

		case PM_SUSPEND_ON:
			asm("mcr p15, 0, r0, c7, c0, 4");	/* wait for interrupt */
			break;

		default:
			FUNC7("AT91: PM - bogus suspend state %d\n", state);
			goto error;
	}

	FUNC7("AT91: PM - wakeup %08x\n",
			FUNC5(AT91_AIC_IPR) & FUNC5(AT91_AIC_IMR));

error:
	target_state = PM_SUSPEND_ON;
	FUNC2();
	FUNC0();
	return 0;
}