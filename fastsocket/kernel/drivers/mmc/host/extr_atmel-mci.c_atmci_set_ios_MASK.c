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
typedef  int u32 ;
struct mmc_ios {int bus_width; int power_mode; scalar_t__ clock; } ;
struct mmc_host {int /*<<< orphan*/  class_dev; } ;
struct atmel_mci_slot {int /*<<< orphan*/  flags; scalar_t__ clock; int /*<<< orphan*/  sdc_reg; struct atmel_mci* host; } ;
struct atmel_mci {int mode_reg; int bus_hz; int need_clock_update; int /*<<< orphan*/  lock; int /*<<< orphan*/  mck; TYPE_1__** slot; int /*<<< orphan*/  queue; } ;
struct TYPE_2__ {unsigned int clock; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATMCI_CARD_NEED_INIT ; 
 unsigned int ATMEL_MCI_MAX_NR_SLOTS ; 
 int /*<<< orphan*/  CR ; 
 int FUNC0 (int,int) ; 
 int MCI_CR_MCIDIS ; 
 int MCI_CR_MCIEN ; 
 int MCI_CR_SWRST ; 
 int FUNC1 (int) ; 
 int MCI_MR_RDPROOF ; 
 int MCI_MR_WRPROOF ; 
 int /*<<< orphan*/  MCI_SDCBUS_1BIT ; 
 int /*<<< orphan*/  MCI_SDCBUS_4BIT ; 
 int /*<<< orphan*/  MCI_SDCBUS_MASK ; 
#define  MMC_BUS_WIDTH_1 130 
#define  MMC_BUS_WIDTH_4 129 
#define  MMC_POWER_UP 128 
 int /*<<< orphan*/  MR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,unsigned int,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct atmel_mci*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct atmel_mci*,int /*<<< orphan*/ ,int) ; 
 struct atmel_mci_slot* FUNC9 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(struct mmc_host *mmc, struct mmc_ios *ios)
{
	struct atmel_mci_slot	*slot = FUNC9(mmc);
	struct atmel_mci	*host = slot->host;
	unsigned int		i;

	slot->sdc_reg &= ~MCI_SDCBUS_MASK;
	switch (ios->bus_width) {
	case MMC_BUS_WIDTH_1:
		slot->sdc_reg |= MCI_SDCBUS_1BIT;
		break;
	case MMC_BUS_WIDTH_4:
		slot->sdc_reg |= MCI_SDCBUS_4BIT;
		break;
	}

	if (ios->clock) {
		unsigned int clock_min = ~0U;
		u32 clkdiv;

		FUNC11(&host->lock);
		if (!host->mode_reg) {
			FUNC3(host->mck);
			FUNC8(host, CR, MCI_CR_SWRST);
			FUNC8(host, CR, MCI_CR_MCIEN);
		}

		/*
		 * Use mirror of ios->clock to prevent race with mmc
		 * core ios update when finding the minimum.
		 */
		slot->clock = ios->clock;
		for (i = 0; i < ATMEL_MCI_MAX_NR_SLOTS; i++) {
			if (host->slot[i] && host->slot[i]->clock
					&& host->slot[i]->clock < clock_min)
				clock_min = host->slot[i]->clock;
		}

		/* Calculate clock divider */
		clkdiv = FUNC0(host->bus_hz, 2 * clock_min) - 1;
		if (clkdiv > 255) {
			FUNC4(&mmc->class_dev,
				"clock %u too slow; using %lu\n",
				clock_min, host->bus_hz / (2 * 256));
			clkdiv = 255;
		}

		host->mode_reg = FUNC1(clkdiv);

		/*
		 * WRPROOF and RDPROOF prevent overruns/underruns by
		 * stopping the clock when the FIFO is full/empty.
		 * This state is not expected to last for long.
		 */
		if (FUNC6())
			host->mode_reg |= (MCI_MR_WRPROOF | MCI_MR_RDPROOF);

		if (FUNC5(&host->queue))
			FUNC8(host, MR, host->mode_reg);
		else
			host->need_clock_update = true;

		FUNC12(&host->lock);
	} else {
		bool any_slot_active = false;

		FUNC11(&host->lock);
		slot->clock = 0;
		for (i = 0; i < ATMEL_MCI_MAX_NR_SLOTS; i++) {
			if (host->slot[i] && host->slot[i]->clock) {
				any_slot_active = true;
				break;
			}
		}
		if (!any_slot_active) {
			FUNC8(host, CR, MCI_CR_MCIDIS);
			if (host->mode_reg) {
				FUNC7(host, MR);
				FUNC2(host->mck);
			}
			host->mode_reg = 0;
		}
		FUNC12(&host->lock);
	}

	switch (ios->power_mode) {
	case MMC_POWER_UP:
		FUNC10(ATMCI_CARD_NEED_INIT, &slot->flags);
		break;
	default:
		/*
		 * TODO: None of the currently available AVR32-based
		 * boards allow MMC power to be turned off. Implement
		 * power control when this can be tested properly.
		 *
		 * We also need to hook this into the clock management
		 * somehow so that newly inserted cards aren't
		 * subjected to a fast clock before we have a chance
		 * to figure out what the maximum rate is. Currently,
		 * there's no way to avoid this, and there never will
		 * be for boards that don't support power control.
		 */
		break;
	}
}