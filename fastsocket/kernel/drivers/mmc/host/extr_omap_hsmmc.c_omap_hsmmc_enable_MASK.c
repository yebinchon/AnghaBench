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
struct omap_hsmmc_host {int dpm_state; int /*<<< orphan*/  mmc; } ;
struct mmc_host {int dummy; } ;

/* Variables and functions */
#define  CARDSLEEP 131 
#define  DISABLED 130 
 int EINVAL ; 
#define  OFF 129 
#define  REGSLEEP 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct omap_hsmmc_host* FUNC2 (struct mmc_host*) ; 
 int FUNC3 (struct omap_hsmmc_host*) ; 
 int FUNC4 (struct omap_hsmmc_host*) ; 
 int FUNC5 (struct omap_hsmmc_host*) ; 

__attribute__((used)) static int FUNC6(struct mmc_host *mmc)
{
	struct omap_hsmmc_host *host = FUNC2(mmc);

	switch (host->dpm_state) {
	case DISABLED:
		return FUNC3(host);
	case CARDSLEEP:
	case REGSLEEP:
		return FUNC5(host);
	case OFF:
		return FUNC4(host);
	default:
		FUNC0(FUNC1(host->mmc), "UNKNOWN state\n");
		return -EINVAL;
	}
}