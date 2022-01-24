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
struct omap_hsmmc_host {scalar_t__ power_mode; int /*<<< orphan*/  mmc; int /*<<< orphan*/  dpm_state; int /*<<< orphan*/  fclk; } ;

/* Variables and functions */
 int /*<<< orphan*/  DISABLED ; 
 scalar_t__ MMC_POWER_OFF ; 
 int /*<<< orphan*/  OMAP_MMC_SLEEP_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct omap_hsmmc_host*) ; 

__attribute__((used)) static int FUNC5(struct omap_hsmmc_host *host)
{
	FUNC4(host);
	FUNC0(host->fclk);
	host->dpm_state = DISABLED;

	FUNC1(FUNC2(host->mmc), "ENABLED -> DISABLED\n");

	if (host->power_mode == MMC_POWER_OFF)
		return 0;

	return FUNC3(OMAP_MMC_SLEEP_TIMEOUT);
}