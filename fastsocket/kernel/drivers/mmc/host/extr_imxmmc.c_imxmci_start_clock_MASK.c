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
typedef  int u16 ;
struct imxmci_host {int /*<<< orphan*/  mmc; scalar_t__ base; int /*<<< orphan*/  pending_events; } ;

/* Variables and functions */
 int /*<<< orphan*/  IMXMCI_PEND_STARTED_b ; 
 scalar_t__ MMC_REG_STATUS ; 
 scalar_t__ MMC_REG_STR_STP_CLK ; 
 int STATUS_CARD_BUS_CLK_RUN ; 
 int STR_STP_CLK_START_CLK ; 
 int STR_STP_CLK_STOP_CLK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct imxmci_host *host)
{
	unsigned int trials = 0;
	unsigned int delay_limit = 128;
	unsigned long flags;
	u16 reg;

	reg = FUNC5(host->base + MMC_REG_STR_STP_CLK);
	FUNC7(reg & ~STR_STP_CLK_STOP_CLK, host->base + MMC_REG_STR_STP_CLK);

	FUNC0(IMXMCI_PEND_STARTED_b, &host->pending_events);

	/*
	 * Command start of the clock, this usually succeeds in less
	 * then 6 delay loops, but during card detection (low clockrate)
	 * it takes up to 5000 delay loops and sometimes fails for the first time
	 */
	reg = FUNC5(host->base + MMC_REG_STR_STP_CLK);
	FUNC7(reg | STR_STP_CLK_START_CLK, host->base + MMC_REG_STR_STP_CLK);

	do {
		unsigned int delay = delay_limit;

		while (delay--) {
			reg = FUNC5(host->base + MMC_REG_STATUS);
			if (reg & STATUS_CARD_BUS_CLK_RUN)
				/* Check twice before cut */
				reg = FUNC5(host->base + MMC_REG_STATUS);
				if (reg & STATUS_CARD_BUS_CLK_RUN)
					return 0;

			if (FUNC6(IMXMCI_PEND_STARTED_b, &host->pending_events))
				return 0;
		}

		FUNC3(flags);
		/*
		 * Ensure, that request is not doubled under all possible circumstances.
		 * It is possible, that cock running state is missed, because some other
		 * IRQ or schedule delays this function execution and the clocks has
		 * been already stopped by other means (response processing, SDHC HW)
		 */
		if (!FUNC6(IMXMCI_PEND_STARTED_b, &host->pending_events)) {
			reg = FUNC5(host->base + MMC_REG_STR_STP_CLK);
			FUNC7(reg | STR_STP_CLK_START_CLK,
					host->base + MMC_REG_STR_STP_CLK);
		}
		FUNC2(flags);

	} while (++trials < 256);

	FUNC1(FUNC4(host->mmc), "imxmci_start_clock blocked, no luck\n");

	return -1;
}