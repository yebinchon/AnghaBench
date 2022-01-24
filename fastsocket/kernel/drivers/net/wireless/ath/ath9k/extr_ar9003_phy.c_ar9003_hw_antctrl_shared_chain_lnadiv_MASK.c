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
typedef  int u8 ;
typedef  int u32 ;
struct ath_hw {int shared_chain_lnadiv; scalar_t__ curchan; TYPE_1__* eep_ops; } ;
struct TYPE_2__ {int (* get_eeprom ) (struct ath_hw*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int AR_ANT_DIV_CTRL_ALL ; 
 int AR_ANT_DIV_CTRL_ALL_S ; 
 int AR_ANT_DIV_ENABLE ; 
 int /*<<< orphan*/  AR_BTCOEX_WL_LNADIV ; 
 int AR_BTCOEX_WL_LNADIV_FORCE_ON ; 
 int AR_FAST_DIV_ENABLE ; 
 int AR_FAST_DIV_ENABLE_S ; 
 int AR_PHY_ANT_DIV_ALT_GAINTB ; 
 int AR_PHY_ANT_DIV_ALT_LNACONF ; 
 int AR_PHY_ANT_DIV_ALT_LNACONF_S ; 
 int AR_PHY_ANT_DIV_LNA1 ; 
 int AR_PHY_ANT_DIV_LNA2 ; 
 int AR_PHY_ANT_DIV_LNADIV ; 
 int AR_PHY_ANT_DIV_LNADIV_S ; 
 int AR_PHY_ANT_DIV_MAIN_GAINTB ; 
 int AR_PHY_ANT_DIV_MAIN_LNACONF ; 
 int AR_PHY_ANT_DIV_MAIN_LNACONF_S ; 
 int AR_PHY_ANT_SW_RX_PROT_S ; 
 int /*<<< orphan*/  AR_PHY_CCK_DETECT ; 
 int /*<<< orphan*/  AR_PHY_MC_GAIN_CTRL ; 
 int /*<<< orphan*/  AR_PHY_RESTART ; 
 int AR_PHY_RESTART_ENABLE_DIV_M2FLAG ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hw*) ; 
 int /*<<< orphan*/  EEP_ANT_DIV_CTL1 ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct ath_hw*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct ath_hw *ah,
						  bool enable)
{
	u8 ant_div_ctl1;
	u32 regval;

	if (!FUNC0(ah))
		return;

	ah->shared_chain_lnadiv = enable;
	ant_div_ctl1 = ah->eep_ops->get_eeprom(ah, EEP_ANT_DIV_CTL1);

	regval = FUNC3(ah, AR_PHY_MC_GAIN_CTRL);
	regval &= (~AR_ANT_DIV_CTRL_ALL);
	regval |= (ant_div_ctl1 & 0x3f) << AR_ANT_DIV_CTRL_ALL_S;
	regval &= ~AR_PHY_ANT_DIV_LNADIV;
	regval |= ((ant_div_ctl1 >> 6) & 0x1) << AR_PHY_ANT_DIV_LNADIV_S;

	if (enable)
		regval |= AR_ANT_DIV_ENABLE;

	FUNC5(ah, AR_PHY_MC_GAIN_CTRL, regval);

	regval = FUNC3(ah, AR_PHY_CCK_DETECT);
	regval &= ~AR_FAST_DIV_ENABLE;
	regval |= ((ant_div_ctl1 >> 7) & 0x1) << AR_FAST_DIV_ENABLE_S;

	if (enable)
		regval |= AR_FAST_DIV_ENABLE;

	FUNC5(ah, AR_PHY_CCK_DETECT, regval);

	if (enable) {
		FUNC4(ah, AR_PHY_MC_GAIN_CTRL,
			    (1 << AR_PHY_ANT_SW_RX_PROT_S));
		if (ah->curchan && FUNC1(ah->curchan))
			FUNC4(ah, AR_PHY_RESTART,
				    AR_PHY_RESTART_ENABLE_DIV_M2FLAG);
		FUNC4(ah, AR_BTCOEX_WL_LNADIV,
			    AR_BTCOEX_WL_LNADIV_FORCE_ON);
	} else {
		FUNC2(ah, AR_PHY_MC_GAIN_CTRL, AR_ANT_DIV_ENABLE);
		FUNC2(ah, AR_PHY_MC_GAIN_CTRL,
			    (1 << AR_PHY_ANT_SW_RX_PROT_S));
		FUNC2(ah, AR_PHY_CCK_DETECT, AR_FAST_DIV_ENABLE);
		FUNC2(ah, AR_BTCOEX_WL_LNADIV,
			    AR_BTCOEX_WL_LNADIV_FORCE_ON);

		regval = FUNC3(ah, AR_PHY_MC_GAIN_CTRL);
		regval &= ~(AR_PHY_ANT_DIV_MAIN_LNACONF |
			AR_PHY_ANT_DIV_ALT_LNACONF |
			AR_PHY_ANT_DIV_MAIN_GAINTB |
			AR_PHY_ANT_DIV_ALT_GAINTB);
		regval |= (AR_PHY_ANT_DIV_LNA1 << AR_PHY_ANT_DIV_MAIN_LNACONF_S);
		regval |= (AR_PHY_ANT_DIV_LNA2 << AR_PHY_ANT_DIV_ALT_LNACONF_S);
		FUNC5(ah, AR_PHY_MC_GAIN_CTRL, regval);
	}
}