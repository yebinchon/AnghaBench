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
struct mmc_omap_host {unsigned int fclk_enabled; int /*<<< orphan*/  clk_lock; int /*<<< orphan*/  fclk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct mmc_omap_host *host, unsigned int enable)
{
	unsigned long flags;

	FUNC2(&host->clk_lock, flags);
	if (host->fclk_enabled != enable) {
		host->fclk_enabled = enable;
		if (enable)
			FUNC1(host->fclk);
		else
			FUNC0(host->fclk);
	}
	FUNC3(&host->clk_lock, flags);
}