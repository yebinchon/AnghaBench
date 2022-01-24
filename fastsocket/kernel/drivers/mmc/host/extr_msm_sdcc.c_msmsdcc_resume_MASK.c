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
struct platform_device {int dummy; } ;
struct msmsdcc_host {int clks_on; scalar_t__ stat_irq; int /*<<< orphan*/  lock; scalar_t__ base; int /*<<< orphan*/  saved_irq0mask; int /*<<< orphan*/  clk; int /*<<< orphan*/  pclk; } ;
struct mmc_host {TYPE_1__* card; } ;
struct TYPE_2__ {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ MMCIMASK0 ; 
 scalar_t__ MMC_TYPE_SDIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct mmc_host* FUNC2 (struct platform_device*) ; 
 struct msmsdcc_host* FUNC3 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC4 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int
FUNC8(struct platform_device *dev)
{
	struct mmc_host *mmc = FUNC2(dev);
	unsigned long flags;

	if (mmc) {
		struct msmsdcc_host *host = FUNC3(mmc);

		FUNC5(&host->lock, flags);

		if (!host->clks_on) {
			FUNC0(host->pclk);
			FUNC0(host->clk);
			host->clks_on = 1;
		}

		FUNC7(host->saved_irq0mask, host->base + MMCIMASK0);

		FUNC6(&host->lock, flags);

		if (mmc->card && mmc->card->type != MMC_TYPE_SDIO)
			FUNC4(mmc);
			if (host->stat_irq)
				FUNC1(host->stat_irq);
		else if (host->stat_irq)
			FUNC1(host->stat_irq);
	}
	return 0;
}