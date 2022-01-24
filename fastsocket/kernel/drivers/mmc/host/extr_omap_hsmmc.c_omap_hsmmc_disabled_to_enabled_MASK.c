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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct omap_hsmmc_host*) ; 

__attribute__((used)) static int FUNC4(struct omap_hsmmc_host *host)
{
	int err;

	err = FUNC0(host->fclk);
	if (err < 0)
		return err;

	FUNC3(host);
	host->dpm_state = ENABLED;

	FUNC1(FUNC2(host->mmc), "DISABLED -> ENABLED\n");

	return 0;
}