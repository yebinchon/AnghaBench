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
typedef  int u8 ;
struct ath_mci_profile {int dummy; } ;
struct ath_btcoex {struct ath_mci_profile mci; } ;
struct ath_softc {struct ath_btcoex btcoex; int /*<<< orphan*/  sc_ah; } ;
struct ath_mci_profile_info {scalar_t__ type; scalar_t__ start; } ;
struct ath_common {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ath_mci_profile*,struct ath_mci_profile_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_mci_profile*,struct ath_mci_profile_info*) ; 
 struct ath_common* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_common*,struct ath_mci_profile*,struct ath_mci_profile_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_common*,struct ath_mci_profile*,struct ath_mci_profile_info*) ; 
 struct ath_mci_profile_info* FUNC5 (struct ath_mci_profile*,struct ath_mci_profile_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_mci_profile_info*,struct ath_mci_profile_info*,int) ; 

__attribute__((used)) static u8 FUNC8(struct ath_softc *sc,
				  struct ath_mci_profile_info *info)
{
	struct ath_common *common = FUNC2(sc->sc_ah);
	struct ath_btcoex *btcoex = &sc->btcoex;
	struct ath_mci_profile *mci = &btcoex->mci;
	struct ath_mci_profile_info *entry = NULL;

	entry = FUNC5(mci, info);
	if (entry) {
		/*
		 * Two MCI interrupts are generated while connecting to
		 * headset and A2DP profile, but only one MCI interrupt
		 * is generated with last added profile type while disconnecting
		 * both profiles.
		 * So while adding second profile type decrement
		 * the first one.
		 */
		if (entry->type != info->type) {
			FUNC0(mci, entry);
			FUNC1(mci, info);
		}
		FUNC7(entry, info, 10);
	}

	if (info->start) {
		if (!entry && !FUNC3(common, mci, info))
			return 0;
	} else
		FUNC4(common, mci, entry);

	FUNC6(sc);
	return 1;
}