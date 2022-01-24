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
struct mmc_ios {int power_mode; scalar_t__ bus_width; int /*<<< orphan*/  clock; } ;
struct mmc_host {int dummy; } ;
struct cb710_slot {int dummy; } ;
struct cb710_mmc_reader {scalar_t__ last_power_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  CB710_MMC_IE_TEST_MASK ; 
 scalar_t__ MMC_BUS_WIDTH_1 ; 
#define  MMC_POWER_OFF 130 
#define  MMC_POWER_ON 129 
#define  MMC_POWER_UP 128 
 int /*<<< orphan*/  FUNC0 (struct cb710_slot*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cb710_slot*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cb710_slot*) ; 
 int /*<<< orphan*/  FUNC3 (struct cb710_slot*) ; 
 int FUNC4 (struct cb710_slot*) ; 
 int /*<<< orphan*/  FUNC5 (struct mmc_host*,int /*<<< orphan*/ ) ; 
 struct cb710_slot* FUNC6 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC7 (struct cb710_slot*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int) ; 
 struct cb710_mmc_reader* FUNC10 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

__attribute__((used)) static void FUNC12(struct mmc_host *mmc, struct mmc_ios *ios)
{
	struct cb710_slot *slot = FUNC6(mmc);
	struct cb710_mmc_reader *reader = FUNC10(mmc);
	int err;

	FUNC5(mmc, ios->clock);

	if (!FUNC2(slot)) {
		FUNC8(FUNC7(slot),
			"no card inserted - ignoring bus powerup request\n");
		ios->power_mode = MMC_POWER_OFF;
	}

	if (ios->power_mode != reader->last_power_mode)
	switch (ios->power_mode) {
	case MMC_POWER_ON:
		err = FUNC4(slot);
		if (err) {
			FUNC9(FUNC7(slot),
				"powerup failed (%d)- retrying\n", err);
			FUNC3(slot);
			FUNC11(1);
			err = FUNC4(slot);
			if (err)
				FUNC9(FUNC7(slot),
					"powerup retry failed (%d) - expect errors\n",
					err);
		}
		reader->last_power_mode = MMC_POWER_ON;
		break;
	case MMC_POWER_OFF:
		FUNC3(slot);
		reader->last_power_mode = MMC_POWER_OFF;
		break;
	case MMC_POWER_UP:
	default:
		/* ignore */;
	}

	FUNC0(slot, ios->bus_width != MMC_BUS_WIDTH_1);

	FUNC1(slot, CB710_MMC_IE_TEST_MASK, 0);
}