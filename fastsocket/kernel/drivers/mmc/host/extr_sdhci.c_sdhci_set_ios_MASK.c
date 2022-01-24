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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct sdhci_host {int flags; scalar_t__ version; unsigned int clock; int quirks; int /*<<< orphan*/  lock; } ;
struct mmc_ios {scalar_t__ power_mode; unsigned int clock; int vdd; scalar_t__ bus_width; scalar_t__ timing; scalar_t__ drv_type; } ;
struct mmc_host {int dummy; } ;

/* Variables and functions */
 scalar_t__ MMC_BUS_WIDTH_4 ; 
 scalar_t__ MMC_BUS_WIDTH_8 ; 
 scalar_t__ MMC_POWER_OFF ; 
 scalar_t__ MMC_SET_DRIVER_TYPE_A ; 
 scalar_t__ MMC_SET_DRIVER_TYPE_C ; 
 scalar_t__ MMC_TIMING_SD_HS ; 
 scalar_t__ MMC_TIMING_UHS_DDR50 ; 
 scalar_t__ MMC_TIMING_UHS_SDR104 ; 
 scalar_t__ MMC_TIMING_UHS_SDR12 ; 
 scalar_t__ MMC_TIMING_UHS_SDR25 ; 
 scalar_t__ MMC_TIMING_UHS_SDR50 ; 
 int SDHCI_CLOCK_CARD_EN ; 
 int /*<<< orphan*/  SDHCI_CLOCK_CONTROL ; 
 int /*<<< orphan*/  SDHCI_CTRL_4BITBUS ; 
 int /*<<< orphan*/  SDHCI_CTRL_8BITBUS ; 
 int SDHCI_CTRL_DRV_TYPE_A ; 
 int SDHCI_CTRL_DRV_TYPE_C ; 
 int SDHCI_CTRL_DRV_TYPE_MASK ; 
 int /*<<< orphan*/  SDHCI_CTRL_HISPD ; 
 int SDHCI_CTRL_PRESET_VAL_ENABLE ; 
 int SDHCI_CTRL_UHS_DDR50 ; 
 int SDHCI_CTRL_UHS_MASK ; 
 int SDHCI_CTRL_UHS_SDR104 ; 
 int SDHCI_CTRL_UHS_SDR12 ; 
 int SDHCI_CTRL_UHS_SDR25 ; 
 int SDHCI_CTRL_UHS_SDR50 ; 
 int SDHCI_DEVICE_DEAD ; 
 int /*<<< orphan*/  SDHCI_HOST_CONTROL ; 
 int /*<<< orphan*/  SDHCI_HOST_CONTROL2 ; 
 int SDHCI_QUIRK_RESET_CMD_DATA_ON_IOS ; 
 int SDHCI_RESET_CMD ; 
 int SDHCI_RESET_DATA ; 
 int /*<<< orphan*/  SDHCI_SIGNAL_ENABLE ; 
 scalar_t__ SDHCI_SPEC_300 ; 
 struct sdhci_host* FUNC0 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC5 (struct sdhci_host*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sdhci_host*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct sdhci_host*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sdhci_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sdhci_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sdhci_host*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC13(struct mmc_host *mmc, struct mmc_ios *ios)
{
	struct sdhci_host *host;
	unsigned long flags;
	u8 ctrl;

	host = FUNC0(mmc);

	FUNC11(&host->lock, flags);

	if (host->flags & SDHCI_DEVICE_DEAD)
		goto out;

	/*
	 * Reset the chip on each power off.
	 * Should clear out any weird states.
	 */
	if (ios->power_mode == MMC_POWER_OFF) {
		FUNC9(host, 0, SDHCI_SIGNAL_ENABLE);
		FUNC4(host);
	}

	FUNC6(host, ios->clock);

	if (ios->power_mode == MMC_POWER_OFF)
		FUNC7(host, -1);
	else
		FUNC7(host, ios->vdd);

	ctrl = FUNC2(host, SDHCI_HOST_CONTROL);

	if (ios->bus_width == MMC_BUS_WIDTH_8)
		ctrl |= SDHCI_CTRL_8BITBUS;
	else
		ctrl &= ~SDHCI_CTRL_8BITBUS;

	if (ios->bus_width == MMC_BUS_WIDTH_4)
		ctrl |= SDHCI_CTRL_4BITBUS;
	else
		ctrl &= ~SDHCI_CTRL_4BITBUS;

	if (ios->timing == MMC_TIMING_SD_HS)
		ctrl |= SDHCI_CTRL_HISPD;
	else
		ctrl &= ~SDHCI_CTRL_HISPD;

	if (host->version >= SDHCI_SPEC_300) {
		u16 clk, ctrl_2;
		unsigned int clock;

		/* In case of UHS-I modes, set High Speed Enable */
		if ((ios->timing == MMC_TIMING_UHS_SDR50) ||
		    (ios->timing == MMC_TIMING_UHS_SDR104) ||
		    (ios->timing == MMC_TIMING_UHS_DDR50) ||
		    (ios->timing == MMC_TIMING_UHS_SDR25))
			ctrl |= SDHCI_CTRL_HISPD;

		ctrl_2 = FUNC3(host, SDHCI_HOST_CONTROL2);
		if (!(ctrl_2 & SDHCI_CTRL_PRESET_VAL_ENABLE)) {
			FUNC8(host, ctrl, SDHCI_HOST_CONTROL);
			/*
			 * We only need to set Driver Strength if the
			 * preset value enable is not set.
			 */
			ctrl_2 &= ~SDHCI_CTRL_DRV_TYPE_MASK;
			if (ios->drv_type == MMC_SET_DRIVER_TYPE_A)
				ctrl_2 |= SDHCI_CTRL_DRV_TYPE_A;
			else if (ios->drv_type == MMC_SET_DRIVER_TYPE_C)
				ctrl_2 |= SDHCI_CTRL_DRV_TYPE_C;

			FUNC10(host, ctrl_2, SDHCI_HOST_CONTROL2);
		} else {
			/*
			 * According to SDHC Spec v3.00, if the Preset Value
			 * Enable in the Host Control 2 register is set, we
			 * need to reset SD Clock Enable before changing High
			 * Speed Enable to avoid generating clock gliches.
			 */

			/* Reset SD Clock Enable */
			clk = FUNC3(host, SDHCI_CLOCK_CONTROL);
			clk &= ~SDHCI_CLOCK_CARD_EN;
			FUNC10(host, clk, SDHCI_CLOCK_CONTROL);

			FUNC8(host, ctrl, SDHCI_HOST_CONTROL);

			/* Re-enable SD Clock */
			clock = host->clock;
			host->clock = 0;
			FUNC6(host, clock);
		}

		ctrl_2 = FUNC3(host, SDHCI_HOST_CONTROL2);

		/* Select Bus Speed Mode for host */
		ctrl_2 &= ~SDHCI_CTRL_UHS_MASK;
		if (ios->timing == MMC_TIMING_UHS_SDR12)
			ctrl_2 |= SDHCI_CTRL_UHS_SDR12;
		else if (ios->timing == MMC_TIMING_UHS_SDR25)
			ctrl_2 |= SDHCI_CTRL_UHS_SDR25;
		else if (ios->timing == MMC_TIMING_UHS_SDR50)
			ctrl_2 |= SDHCI_CTRL_UHS_SDR50;
		else if (ios->timing == MMC_TIMING_UHS_SDR104)
			ctrl_2 |= SDHCI_CTRL_UHS_SDR104;
		else if (ios->timing == MMC_TIMING_UHS_DDR50)
			ctrl_2 |= SDHCI_CTRL_UHS_DDR50;

		/* Reset SD Clock Enable */
		clk = FUNC3(host, SDHCI_CLOCK_CONTROL);
		clk &= ~SDHCI_CLOCK_CARD_EN;
		FUNC10(host, clk, SDHCI_CLOCK_CONTROL);

		FUNC10(host, ctrl_2, SDHCI_HOST_CONTROL2);

		/* Re-enable SD Clock */
		clock = host->clock;
		host->clock = 0;
		FUNC6(host, clock);
	} else
		FUNC8(host, ctrl, SDHCI_HOST_CONTROL);

	/*
	 * Some (ENE) controllers go apeshit on some ios operation,
	 * signalling timeout and CRC errors even on CMD0. Resetting
	 * it on each ios seems to solve the problem.
	 */
	if(host->quirks & SDHCI_QUIRK_RESET_CMD_DATA_ON_IOS)
		FUNC5(host, SDHCI_RESET_CMD | SDHCI_RESET_DATA);

out:
	FUNC1();
	FUNC12(&host->lock, flags);
}