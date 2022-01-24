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
struct msmsdcc_host {scalar_t__ clks_on; int /*<<< orphan*/  pclk; int /*<<< orphan*/  clk; scalar_t__ base; scalar_t__ stat_irq; } ;
struct mmc_host {TYPE_1__* card; } ;
typedef  int /*<<< orphan*/  pm_message_t ;
struct TYPE_2__ {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ MMCIMASK0 ; 
 scalar_t__ MMC_TYPE_SDIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct mmc_host* FUNC2 (struct platform_device*) ; 
 struct msmsdcc_host* FUNC3 (struct mmc_host*) ; 
 int FUNC4 (struct mmc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int
FUNC6(struct platform_device *dev, pm_message_t state)
{
	struct mmc_host *mmc = FUNC2(dev);
	int rc = 0;

	if (mmc) {
		struct msmsdcc_host *host = FUNC3(mmc);

		if (host->stat_irq)
			FUNC1(host->stat_irq);

		if (mmc->card && mmc->card->type != MMC_TYPE_SDIO)
			rc = FUNC4(mmc, state);
		if (!rc) {
			FUNC5(0, host->base + MMCIMASK0);

			if (host->clks_on) {
				FUNC0(host->clk);
				FUNC0(host->pclk);
				host->clks_on = 0;
			}
		}
	}
	return rc;
}