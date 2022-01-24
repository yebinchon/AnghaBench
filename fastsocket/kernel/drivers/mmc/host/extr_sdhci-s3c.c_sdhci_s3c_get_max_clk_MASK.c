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
struct sdhci_s3c {struct clk** clk_bus; } ;
struct sdhci_host {int dummy; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int MAX_BUS_CLK ; 
 unsigned int FUNC0 (struct clk*) ; 
 int /*<<< orphan*/  FUNC1 (struct sdhci_host*) ; 
 struct sdhci_s3c* FUNC2 (struct sdhci_host*) ; 

__attribute__((used)) static unsigned int FUNC3(struct sdhci_host *host)
{
	struct sdhci_s3c *ourhost = FUNC2(host);
	struct clk *busclk;
	unsigned int rate, max;
	int clk;

	/* note, a reset will reset the clock source */

	FUNC1(host);

	for (max = 0, clk = 0; clk < MAX_BUS_CLK; clk++) {
		busclk = ourhost->clk_bus[clk];
		if (!busclk)
			continue;

		rate = FUNC0(busclk);
		if (rate > max)
			max = rate;
	}

	return max;
}