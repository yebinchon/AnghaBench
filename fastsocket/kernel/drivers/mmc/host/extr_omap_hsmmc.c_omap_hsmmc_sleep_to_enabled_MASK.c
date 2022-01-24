#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct omap_hsmmc_host {scalar_t__ dpm_state; int /*<<< orphan*/  mmc; int /*<<< orphan*/  vdd; int /*<<< orphan*/  slot_id; int /*<<< orphan*/  dev; int /*<<< orphan*/  fclk; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* set_sleep ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 scalar_t__ CARDSLEEP ; 
 scalar_t__ ENABLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC6 (struct omap_hsmmc_host*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct omap_hsmmc_host*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC10(struct omap_hsmmc_host *host)
{
	if (!FUNC7(host->mmc))
		return 0;

	FUNC0(host->fclk);
	FUNC8(host);
	if (FUNC6(host).set_sleep)
		FUNC6(host).set_sleep(host->dev, host->slot_id, 0,
			 host->vdd, host->dpm_state == CARDSLEEP);
	if (FUNC3(host->mmc))
		FUNC2(host->mmc);

	FUNC1(FUNC4(host->mmc), "%s -> ENABLED\n",
		host->dpm_state == CARDSLEEP ? "CARDSLEEP" : "REGSLEEP");

	host->dpm_state = ENABLED;

	FUNC5(host->mmc);

	return 0;
}