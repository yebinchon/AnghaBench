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
typedef  int u16 ;
struct mmc_omap_slot {int fclk_freq; } ;
struct mmc_omap_host {struct mmc_omap_slot* current_slot; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD ; 
 int FUNC0 (struct mmc_omap_host*,int /*<<< orphan*/ ) ; 
 int OMAP_MMC_STAT_END_OF_CMD ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_omap_host*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  STAT ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void
FUNC3(struct mmc_omap_host *host, int maxloops)
{
	struct mmc_omap_slot *slot = host->current_slot;
	unsigned int restarts, passes, timeout;
	u16 stat = 0;

	/* Sending abort takes 80 clocks. Have some extra and round up */
	timeout = (120*1000000 + slot->fclk_freq - 1)/slot->fclk_freq;
	restarts = 0;
	while (restarts < maxloops) {
		FUNC1(host, STAT, 0xFFFF);
		FUNC1(host, CMD, (3 << 12) | (1 << 7));

		passes = 0;
		while (passes < timeout) {
			stat = FUNC0(host, STAT);
			if (stat & OMAP_MMC_STAT_END_OF_CMD)
				goto out;
			FUNC2(1);
			passes++;
		}

		restarts++;
	}
out:
	FUNC1(host, STAT, stat);
}