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
struct omap_hsmmc_host {int /*<<< orphan*/  mmc; int /*<<< orphan*/  dpm_state; int /*<<< orphan*/  fclk; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENABLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct omap_hsmmc_host*) ; 
 int /*<<< orphan*/  FUNC5 (struct omap_hsmmc_host*) ; 

__attribute__((used)) static int FUNC6(struct omap_hsmmc_host *host)
{
	FUNC0(host->fclk);

	FUNC5(host);
	FUNC4(host);
	FUNC3(host->mmc);

	host->dpm_state = ENABLED;

	FUNC1(FUNC2(host->mmc), "OFF -> ENABLED\n");

	return 0;
}