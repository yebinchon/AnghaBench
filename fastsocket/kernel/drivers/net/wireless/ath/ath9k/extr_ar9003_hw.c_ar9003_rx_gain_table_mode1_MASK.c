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
struct ath_hw {int /*<<< orphan*/  iniModesRxGain; int /*<<< orphan*/  ini_modes_rx_gain_bounds; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ath_hw*) ; 
 scalar_t__ FUNC1 (struct ath_hw*) ; 
 scalar_t__ FUNC2 (struct ath_hw*) ; 
 scalar_t__ FUNC3 (struct ath_hw*) ; 
 scalar_t__ FUNC4 (struct ath_hw*) ; 
 scalar_t__ FUNC5 (struct ath_hw*) ; 
 scalar_t__ FUNC6 (struct ath_hw*) ; 
 scalar_t__ FUNC7 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ar9300Common_wo_xlna_rx_gain_table_2p2 ; 
 int /*<<< orphan*/  ar9331_common_wo_xlna_rx_gain_1p1 ; 
 int /*<<< orphan*/  ar9331_common_wo_xlna_rx_gain_1p2 ; 
 int /*<<< orphan*/  ar9340Common_wo_xlna_rx_gain_table_1p0 ; 
 int /*<<< orphan*/  ar9462_common_wo_xlna_rx_gain_table_2p0 ; 
 int /*<<< orphan*/  ar9485Common_wo_xlna_rx_gain_1_1 ; 
 int /*<<< orphan*/  ar955x_1p0_common_wo_xlna_rx_gain_bounds ; 
 int /*<<< orphan*/  ar955x_1p0_common_wo_xlna_rx_gain_table ; 
 int /*<<< orphan*/  ar9565_1p0_common_wo_xlna_rx_gain_table ; 
 int /*<<< orphan*/  ar9580_1p0_wo_xlna_rx_gain_table ; 

__attribute__((used)) static void FUNC9(struct ath_hw *ah)
{
	if (FUNC1(ah))
		FUNC8(&ah->iniModesRxGain,
			ar9331_common_wo_xlna_rx_gain_1p2);
	else if (FUNC0(ah))
		FUNC8(&ah->iniModesRxGain,
			ar9331_common_wo_xlna_rx_gain_1p1);
	else if (FUNC2(ah))
		FUNC8(&ah->iniModesRxGain,
			ar9340Common_wo_xlna_rx_gain_table_1p0);
	else if (FUNC4(ah))
		FUNC8(&ah->iniModesRxGain,
			ar9485Common_wo_xlna_rx_gain_1_1);
	else if (FUNC3(ah))
		FUNC8(&ah->iniModesRxGain,
			ar9462_common_wo_xlna_rx_gain_table_2p0);
	else if (FUNC5(ah)) {
		FUNC8(&ah->iniModesRxGain,
			ar955x_1p0_common_wo_xlna_rx_gain_table);
		FUNC8(&ah->ini_modes_rx_gain_bounds,
			ar955x_1p0_common_wo_xlna_rx_gain_bounds);
	} else if (FUNC7(ah))
		FUNC8(&ah->iniModesRxGain,
			ar9580_1p0_wo_xlna_rx_gain_table);
	else if (FUNC6(ah))
		FUNC8(&ah->iniModesRxGain,
			       ar9565_1p0_common_wo_xlna_rx_gain_table);
	else
		FUNC8(&ah->iniModesRxGain,
			ar9300Common_wo_xlna_rx_gain_table_2p2);
}