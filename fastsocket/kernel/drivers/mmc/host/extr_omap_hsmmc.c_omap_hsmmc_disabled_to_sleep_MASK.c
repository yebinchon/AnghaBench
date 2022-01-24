#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct omap_hsmmc_host {int dpm_state; int /*<<< orphan*/  slot_id; int /*<<< orphan*/  dev; TYPE_1__* mmc; int /*<<< orphan*/  fclk; } ;
struct TYPE_8__ {scalar_t__ (* get_cover_state ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;scalar_t__ card_detect; int /*<<< orphan*/  (* set_sleep ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ;} ;
struct TYPE_7__ {int caps; } ;

/* Variables and functions */
 int CARDSLEEP ; 
 int MMC_CAP_NONREMOVABLE ; 
 int /*<<< orphan*/  OMAP_MMC_OFF_TIMEOUT ; 
 int REGSLEEP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 TYPE_2__ FUNC7 (struct omap_hsmmc_host*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct omap_hsmmc_host*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct omap_hsmmc_host *host)
{
	int err, new_state;

	if (!FUNC8(host->mmc))
		return 0;

	FUNC1(host->fclk);
	FUNC10(host);
	if (FUNC3(host->mmc)) {
		err = FUNC4(host->mmc);
		if (err < 0) {
			FUNC0(host->fclk);
			FUNC6(host->mmc);
			return err;
		}
		new_state = CARDSLEEP;
	} else {
		new_state = REGSLEEP;
	}
	if (FUNC7(host).set_sleep)
		FUNC7(host).set_sleep(host->dev, host->slot_id, 1, 0,
					 new_state == CARDSLEEP);
	/* FIXME: turn off bus power and perhaps interrupts too */
	FUNC0(host->fclk);
	host->dpm_state = new_state;

	FUNC6(host->mmc);

	FUNC2(FUNC5(host->mmc), "DISABLED -> %s\n",
		host->dpm_state == CARDSLEEP ? "CARDSLEEP" : "REGSLEEP");

	if ((host->mmc->caps & MMC_CAP_NONREMOVABLE) ||
	    FUNC7(host).card_detect ||
	    (FUNC7(host).get_cover_state &&
	     FUNC7(host).get_cover_state(host->dev, host->slot_id)))
		return FUNC9(OMAP_MMC_OFF_TIMEOUT);

	return 0;
}