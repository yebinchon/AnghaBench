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
struct omap_hsmmc_host {int /*<<< orphan*/  mmc; int /*<<< orphan*/  fclk; } ;
struct mmc_host {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct omap_hsmmc_host* FUNC3 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC4 (struct omap_hsmmc_host*) ; 

__attribute__((used)) static int FUNC5(struct mmc_host *mmc)
{
	struct omap_hsmmc_host *host = FUNC3(mmc);
	int err;

	err = FUNC0(host->fclk);
	if (err)
		return err;
	FUNC1(FUNC2(host->mmc), "mmc_fclk: enabled\n");
	FUNC4(host);
	return 0;
}