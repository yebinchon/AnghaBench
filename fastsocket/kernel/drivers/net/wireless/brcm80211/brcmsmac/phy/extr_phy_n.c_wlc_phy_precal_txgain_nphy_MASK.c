#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_4__ {int radiorev; int /*<<< orphan*/  phy_rev; } ;
struct brcms_phy {int* nphy_txcal_pwr_idx; int /*<<< orphan*/  nphy_txcal_bbmult; int /*<<< orphan*/  radio_chanspec; TYPE_2__ pubpi; TYPE_1__* sh; scalar_t__ use_int_tx_iqlo_cal_nphy; } ;
struct TYPE_3__ {int hw_phytxchain; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC5 (struct brcms_phy*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC7 (struct brcms_phy*,int,int,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct brcms_phy*,int,int,int) ; 

__attribute__((used)) static void FUNC9(struct brcms_phy *pi)
{
	bool save_bbmult = false;
	u8 txcal_index_2057_rev5n7 = 0;
	u8 txcal_index_2057_rev3n4n6 = 10;

	if (pi->use_int_tx_iqlo_cal_nphy) {
		if (FUNC1(pi->pubpi.phy_rev, 7)) {
			if ((pi->pubpi.radiorev == 3) ||
			    (pi->pubpi.radiorev == 4) ||
			    (pi->pubpi.radiorev == 6)) {

				pi->nphy_txcal_pwr_idx[0] =
					txcal_index_2057_rev3n4n6;
				pi->nphy_txcal_pwr_idx[1] =
					txcal_index_2057_rev3n4n6;
				FUNC8(
					pi, 3,
					txcal_index_2057_rev3n4n6,
					false);
			} else {

				pi->nphy_txcal_pwr_idx[0] =
					txcal_index_2057_rev5n7;
				pi->nphy_txcal_pwr_idx[1] =
					txcal_index_2057_rev5n7;
				FUNC8(
					pi, 3,
					txcal_index_2057_rev5n7,
					false);
			}
			save_bbmult = true;

		} else if (FUNC3(pi->pubpi.phy_rev, 5)) {
			FUNC5(pi, 11, false);
			if (pi->sh->hw_phytxchain != 3) {
				pi->nphy_txcal_pwr_idx[1] =
					pi->nphy_txcal_pwr_idx[0];
				FUNC8(pi, 3,
							 pi->
							 nphy_txcal_pwr_idx[0],
							 true);
				save_bbmult = true;
			}

		} else if (FUNC2(pi->pubpi.phy_rev, 5)) {
			if (FUNC4(pi)) {
				if (FUNC0(pi->radio_chanspec)) {
					FUNC5(pi, 12,
								    false);
				} else {
					pi->nphy_txcal_pwr_idx[0] = 80;
					pi->nphy_txcal_pwr_idx[1] = 80;
					FUNC8(pi, 3, 80,
								 false);
					save_bbmult = true;
				}
			} else {
				FUNC6(pi);
				save_bbmult = true;
			}

		} else if (FUNC2(pi->pubpi.phy_rev, 6)) {
			if (FUNC4(pi)) {
				if (FUNC0(pi->radio_chanspec))
					FUNC5(pi, 12,
								    false);
				else
					FUNC5(pi, 14,
								    false);
			} else {
				FUNC6(pi);
				save_bbmult = true;
			}
		}

	} else {
		FUNC5(pi, 10, false);
	}

	if (save_bbmult)
		FUNC7(pi, 15, 1, 87, 16,
					&pi->nphy_txcal_bbmult);
}