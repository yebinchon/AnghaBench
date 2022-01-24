#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mmc_ios {int clock; scalar_t__ bus_width; int power_mode; int /*<<< orphan*/  bus_mode; } ;
struct mmc_host {int dummy; } ;
struct at91mci_host {TYPE_1__* board; int /*<<< orphan*/  bus_mode; int /*<<< orphan*/  mci_clk; } ;
struct TYPE_2__ {scalar_t__ vcc_pin; scalar_t__ wire4; } ;

/* Variables and functions */
 int AT91_MCI_CLKDIV ; 
 int /*<<< orphan*/  AT91_MCI_CR ; 
 int AT91_MCI_MCIDIS ; 
 int AT91_MCI_MCIEN ; 
 int /*<<< orphan*/  AT91_MCI_MR ; 
 int AT91_MCI_SDCBUS ; 
 int /*<<< orphan*/  AT91_MCI_SDCR ; 
 scalar_t__ MMC_BUS_WIDTH_4 ; 
#define  MMC_POWER_OFF 130 
#define  MMC_POWER_ON 129 
#define  MMC_POWER_UP 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct at91mci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct at91mci_host*,int /*<<< orphan*/ ,int) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int) ; 
 struct at91mci_host* FUNC5 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

__attribute__((used)) static void FUNC7(struct mmc_host *mmc, struct mmc_ios *ios)
{
	int clkdiv;
	struct at91mci_host *host = FUNC5(mmc);
	unsigned long at91_master_clock = FUNC3(host->mci_clk);

	host->bus_mode = ios->bus_mode;

	if (ios->clock == 0) {
		/* Disable the MCI controller */
		FUNC2(host, AT91_MCI_CR, AT91_MCI_MCIDIS);
		clkdiv = 0;
	}
	else {
		/* Enable the MCI controller */
		FUNC2(host, AT91_MCI_CR, AT91_MCI_MCIEN);

		if ((at91_master_clock % (ios->clock * 2)) == 0)
			clkdiv = ((at91_master_clock / ios->clock) / 2) - 1;
		else
			clkdiv = (at91_master_clock / ios->clock) / 2;

		FUNC6("clkdiv = %d. mcck = %ld\n", clkdiv,
			at91_master_clock / (2 * (clkdiv + 1)));
	}
	if (ios->bus_width == MMC_BUS_WIDTH_4 && host->board->wire4) {
		FUNC6("MMC: Setting controller bus width to 4\n");
		FUNC2(host, AT91_MCI_SDCR, FUNC1(host, AT91_MCI_SDCR) | AT91_MCI_SDCBUS);
	}
	else {
		FUNC6("MMC: Setting controller bus width to 1\n");
		FUNC2(host, AT91_MCI_SDCR, FUNC1(host, AT91_MCI_SDCR) & ~AT91_MCI_SDCBUS);
	}

	/* Set the clock divider */
	FUNC2(host, AT91_MCI_MR, (FUNC1(host, AT91_MCI_MR) & ~AT91_MCI_CLKDIV) | clkdiv);

	/* maybe switch power to the card */
	if (host->board->vcc_pin) {
		switch (ios->power_mode) {
			case MMC_POWER_OFF:
				FUNC4(host->board->vcc_pin, 0);
				break;
			case MMC_POWER_UP:
				FUNC4(host->board->vcc_pin, 1);
				break;
			case MMC_POWER_ON:
				break;
			default:
				FUNC0(1);
		}
	}
}