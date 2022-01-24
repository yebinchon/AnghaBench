#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct sdhci_s3c {int cur_clk; TYPE_2__* pdev; TYPE_1__* pdata; struct clk** clk_bus; } ;
struct sdhci_host {scalar_t__ ioaddr; int /*<<< orphan*/  timeout_clk; int /*<<< orphan*/  max_clk; } ;
struct mmc_ios {unsigned int clock; } ;
struct clk {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* cfg_card ) (TYPE_2__*,scalar_t__,struct mmc_ios*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int MAX_BUS_CLK ; 
 scalar_t__ S3C_SDHCI_CONTROL2 ; 
 int S3C_SDHCI_CTRL2_SELBASECLK_MASK ; 
 int S3C_SDHCI_CTRL2_SELBASECLK_SHIFT ; 
 scalar_t__ SDHCI_CLOCK_CONTROL ; 
 unsigned int UINT_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct clk*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,unsigned int,unsigned int) ; 
 int FUNC2 (scalar_t__) ; 
 unsigned int FUNC3 (struct sdhci_s3c*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,scalar_t__,struct mmc_ios*,int /*<<< orphan*/ *) ; 
 struct sdhci_s3c* FUNC6 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC9(struct sdhci_host *host, unsigned int clock)
{
	struct sdhci_s3c *ourhost = FUNC6(host);
	unsigned int best = UINT_MAX;
	unsigned int delta;
	int best_src = 0;
	int src;
	u32 ctrl;

	/* don't bother if the clock is going off. */
	if (clock == 0)
		return;

	for (src = 0; src < MAX_BUS_CLK; src++) {
		delta = FUNC3(ourhost, src, clock);
		if (delta < best) {
			best = delta;
			best_src = src;
		}
	}

	FUNC1(&ourhost->pdev->dev,
		"selected source %d, clock %d, delta %d\n",
		 best_src, clock, best);

	/* select the new clock source */

	if (ourhost->cur_clk != best_src) {
		struct clk *clk = ourhost->clk_bus[best_src];

		/* turn clock off to card before changing clock source */
		FUNC8(0, host->ioaddr + SDHCI_CLOCK_CONTROL);

		ourhost->cur_clk = best_src;
		host->max_clk = FUNC0(clk);
		host->timeout_clk = FUNC4(host);

		ctrl = FUNC2(host->ioaddr + S3C_SDHCI_CONTROL2);
		ctrl &= ~S3C_SDHCI_CTRL2_SELBASECLK_MASK;
		ctrl |= best_src << S3C_SDHCI_CTRL2_SELBASECLK_SHIFT;
		FUNC7(ctrl, host->ioaddr + S3C_SDHCI_CONTROL2);
	}

	/* reconfigure the hardware for new clock rate */

	{
		struct mmc_ios ios;

		ios.clock = clock;

		if (ourhost->pdata->cfg_card)
			(ourhost->pdata->cfg_card)(ourhost->pdev, host->ioaddr,
						   &ios, NULL);
	}
}