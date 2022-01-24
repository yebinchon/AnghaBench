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
typedef  scalar_t__ u8 ;
struct wbsd_host {scalar_t__ clk; scalar_t__ bus_width; int /*<<< orphan*/  lock; int /*<<< orphan*/  ignore_timer; int /*<<< orphan*/  flags; scalar_t__ base; } ;
struct mmc_ios {scalar_t__ power_mode; int clock; scalar_t__ chip_select; scalar_t__ bus_width; } ;
struct mmc_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int HZ ; 
 scalar_t__ MMC_BUS_WIDTH_1 ; 
 scalar_t__ MMC_CS_HIGH ; 
 scalar_t__ MMC_POWER_OFF ; 
 scalar_t__ WBSD_CLK_12M ; 
 scalar_t__ WBSD_CLK_16M ; 
 scalar_t__ WBSD_CLK_24M ; 
 scalar_t__ WBSD_CLK_375K ; 
 scalar_t__ WBSD_CSR ; 
 scalar_t__ WBSD_DAT3_H ; 
 int /*<<< orphan*/  WBSD_FIGNORE_DETECT ; 
 int /*<<< orphan*/  WBSD_IDX_CLK ; 
 int /*<<< orphan*/  WBSD_IDX_SETUP ; 
 scalar_t__ WBSD_POWER_N ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ jiffies ; 
 struct wbsd_host* FUNC2 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct wbsd_host*) ; 
 scalar_t__ FUNC8 (struct wbsd_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct wbsd_host*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC10(struct mmc_host *mmc, struct mmc_ios *ios)
{
	struct wbsd_host *host = FUNC2(mmc);
	u8 clk, setup, pwr;

	FUNC5(&host->lock);

	/*
	 * Reset the chip on each power off.
	 * Should clear out any weird states.
	 */
	if (ios->power_mode == MMC_POWER_OFF)
		FUNC7(host);

	if (ios->clock >= 24000000)
		clk = WBSD_CLK_24M;
	else if (ios->clock >= 16000000)
		clk = WBSD_CLK_16M;
	else if (ios->clock >= 12000000)
		clk = WBSD_CLK_12M;
	else
		clk = WBSD_CLK_375K;

	/*
	 * Only write to the clock register when
	 * there is an actual change.
	 */
	if (clk != host->clk) {
		FUNC9(host, WBSD_IDX_CLK, clk);
		host->clk = clk;
	}

	/*
	 * Power up card.
	 */
	if (ios->power_mode != MMC_POWER_OFF) {
		pwr = FUNC1(host->base + WBSD_CSR);
		pwr &= ~WBSD_POWER_N;
		FUNC4(pwr, host->base + WBSD_CSR);
	}

	/*
	 * MMC cards need to have pin 1 high during init.
	 * It wreaks havoc with the card detection though so
	 * that needs to be disabled.
	 */
	setup = FUNC8(host, WBSD_IDX_SETUP);
	if (ios->chip_select == MMC_CS_HIGH) {
		FUNC0(ios->bus_width != MMC_BUS_WIDTH_1);
		setup |= WBSD_DAT3_H;
		host->flags |= WBSD_FIGNORE_DETECT;
	} else {
		if (setup & WBSD_DAT3_H) {
			setup &= ~WBSD_DAT3_H;

			/*
			 * We cannot resume card detection immediatly
			 * because of capacitance and delays in the chip.
			 */
			FUNC3(&host->ignore_timer, jiffies + HZ / 100);
		}
	}
	FUNC9(host, WBSD_IDX_SETUP, setup);

	/*
	 * Store bus width for later. Will be used when
	 * setting up the data transfer.
	 */
	host->bus_width = ios->bus_width;

	FUNC6(&host->lock);
}