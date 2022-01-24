#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct omap_hsmmc_host {scalar_t__ dpm_state; TYPE_1__* mmc; int /*<<< orphan*/  power_mode; scalar_t__ vdd; int /*<<< orphan*/  slot_id; int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* set_power ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;scalar_t__ (* get_cover_state ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;scalar_t__ card_detect; } ;
struct TYPE_5__ {int caps; } ;

/* Variables and functions */
 scalar_t__ CARDSLEEP ; 
 int MMC_CAP_NONREMOVABLE ; 
 int /*<<< orphan*/  MMC_POWER_OFF ; 
 scalar_t__ OFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_2__ FUNC3 (struct omap_hsmmc_host*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct omap_hsmmc_host *host)
{
	if (!FUNC4(host->mmc))
		return 0;

	if (!((host->mmc->caps & MMC_CAP_NONREMOVABLE) ||
	      FUNC3(host).card_detect ||
	      (FUNC3(host).get_cover_state &&
	       FUNC3(host).get_cover_state(host->dev, host->slot_id)))) {
		FUNC2(host->mmc);
		return 0;
	}

	FUNC3(host).set_power(host->dev, host->slot_id, 0, 0);
	host->vdd = 0;
	host->power_mode = MMC_POWER_OFF;

	FUNC0(FUNC1(host->mmc), "%s -> OFF\n",
		host->dpm_state == CARDSLEEP ? "CARDSLEEP" : "REGSLEEP");

	host->dpm_state = OFF;

	FUNC2(host->mmc);

	return 0;
}