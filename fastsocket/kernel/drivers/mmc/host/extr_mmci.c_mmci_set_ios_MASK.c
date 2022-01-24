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
typedef  int /*<<< orphan*/  u32 ;
struct mmci_host {scalar_t__ hw_designer; int /*<<< orphan*/  lock; scalar_t__ base; int /*<<< orphan*/  pwr; TYPE_1__* plat; int /*<<< orphan*/  vcc; } ;
struct mmc_ios {int power_mode; scalar_t__ bus_mode; int /*<<< orphan*/  clock; int /*<<< orphan*/  vdd; } ;
struct mmc_host {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* translate_vdd ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 scalar_t__ AMBA_VENDOR_ST ; 
 int /*<<< orphan*/  MCI_OD ; 
 int /*<<< orphan*/  MCI_PWR_ON ; 
 int /*<<< orphan*/  MCI_PWR_UP ; 
 int /*<<< orphan*/  MCI_ROD ; 
 scalar_t__ MMCIPOWER ; 
 scalar_t__ MMC_BUSMODE_OPENDRAIN ; 
#define  MMC_POWER_OFF 130 
#define  MMC_POWER_ON 129 
#define  MMC_POWER_UP 128 
 int /*<<< orphan*/  FUNC0 (struct mmc_host*) ; 
 struct mmci_host* FUNC1 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mmci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC10(struct mmc_host *mmc, struct mmc_ios *ios)
{
	struct mmci_host *host = FUNC1(mmc);
	u32 pwr = 0;
	unsigned long flags;

	switch (ios->power_mode) {
	case MMC_POWER_OFF:
		if(host->vcc &&
		   FUNC5(host->vcc))
			FUNC4(host->vcc);
		break;
	case MMC_POWER_UP:
#ifdef CONFIG_REGULATOR
		if (host->vcc)
			/* This implicitly enables the regulator */
			mmc_regulator_set_ocr(host->vcc, ios->vdd);
#endif
		/*
		 * The translate_vdd function is not used if you have
		 * an external regulator, or your design is really weird.
		 * Using it would mean sending in power control BOTH using
		 * a regulator AND the 4 MMCIPWR bits. If we don't have
		 * a regulator, we might have some other platform specific
		 * power control behind this translate function.
		 */
		if (!host->vcc && host->plat->translate_vdd)
			pwr |= host->plat->translate_vdd(FUNC0(mmc), ios->vdd);
		/* The ST version does not have this, fall through to POWER_ON */
		if (host->hw_designer != AMBA_VENDOR_ST) {
			pwr |= MCI_PWR_UP;
			break;
		}
	case MMC_POWER_ON:
		pwr |= MCI_PWR_ON;
		break;
	}

	if (ios->bus_mode == MMC_BUSMODE_OPENDRAIN) {
		if (host->hw_designer != AMBA_VENDOR_ST)
			pwr |= MCI_ROD;
		else {
			/*
			 * The ST Micro variant use the ROD bit for something
			 * else and only has OD (Open Drain).
			 */
			pwr |= MCI_OD;
		}
	}

	FUNC6(&host->lock, flags);

	FUNC3(host, ios->clock);

	if (host->pwr != pwr) {
		host->pwr = pwr;
		FUNC9(pwr, host->base + MMCIPOWER);
	}

	FUNC7(&host->lock, flags);
}