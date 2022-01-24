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
struct ath_softc {struct ath_hw* sc_ah; } ;
struct ath_hw {int txchainmask; struct ath9k_hw_cal_data* caldata; } ;
struct ath_common {int dummy; } ;
struct ath9k_hw_cal_data {int /*<<< orphan*/  paprd_done; } ;

/* Variables and functions */
 int AR9300_MAX_CHAINS ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  CALIBRATE ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*,struct ath9k_hw_cal_data*,int) ; 
 struct ath_common* FUNC3 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_common*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC5(struct ath_softc *sc)
{
	struct ath_hw *ah = sc->sc_ah;
	struct ath_common *common = FUNC3(ah);
	struct ath9k_hw_cal_data *caldata = ah->caldata;
	int chain;

	if (!caldata || !caldata->paprd_done) {
		FUNC4(common, CALIBRATE, "Failed to activate PAPRD\n");
		return;
	}

	FUNC1(ah, false);
	for (chain = 0; chain < AR9300_MAX_CHAINS; chain++) {
		if (!(ah->txchainmask & FUNC0(chain)))
			continue;

		FUNC2(ah, caldata, chain);
	}

	FUNC4(common, CALIBRATE, "Activating PAPRD\n");
	FUNC1(ah, true);
}