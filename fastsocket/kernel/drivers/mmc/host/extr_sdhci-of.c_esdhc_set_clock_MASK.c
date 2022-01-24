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
struct sdhci_host {int max_clk; unsigned int clock; scalar_t__ ioaddr; int /*<<< orphan*/  mmc; } ;

/* Variables and functions */
 int ESDHC_CLOCK_HCKEN ; 
 int ESDHC_CLOCK_IPGEN ; 
 int ESDHC_CLOCK_MASK ; 
 int ESDHC_CLOCK_PEREN ; 
 int ESDHC_DIVIDER_SHIFT ; 
 int ESDHC_PREDIV_SHIFT ; 
 scalar_t__ ESDHC_SYSTEM_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int) ; 

__attribute__((used)) static void FUNC5(struct sdhci_host *host, unsigned int clock)
{
	int pre_div = 2;
	int div = 1;

	FUNC0(host->ioaddr + ESDHC_SYSTEM_CONTROL, ESDHC_CLOCK_IPGEN |
		  ESDHC_CLOCK_HCKEN | ESDHC_CLOCK_PEREN | ESDHC_CLOCK_MASK);

	if (clock == 0)
		goto out;

	while (host->max_clk / pre_div / 16 > clock && pre_div < 256)
		pre_div *= 2;

	while (host->max_clk / pre_div / div > clock && div < 16)
		div++;

	FUNC1(FUNC3(host->mmc), "desired SD clock: %d, actual: %d\n",
		clock, host->max_clk / pre_div / div);

	pre_div >>= 1;
	div--;

	FUNC4(host->ioaddr + ESDHC_SYSTEM_CONTROL, ESDHC_CLOCK_IPGEN |
		  ESDHC_CLOCK_HCKEN | ESDHC_CLOCK_PEREN |
		  div << ESDHC_DIVIDER_SHIFT | pre_div << ESDHC_PREDIV_SHIFT);
	FUNC2(100);
out:
	host->clock = clock;
}