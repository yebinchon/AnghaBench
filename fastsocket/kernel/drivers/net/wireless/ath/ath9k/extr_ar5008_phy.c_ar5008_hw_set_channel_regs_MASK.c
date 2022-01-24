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
typedef  int u32 ;
struct ath_hw {int dummy; } ;
struct ath9k_channel {scalar_t__ chanmode; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_CST ; 
 int AR_CST_TIMEOUT_LIMIT_S ; 
 int /*<<< orphan*/  AR_GTXTO ; 
 int AR_GTXTO_TIMEOUT_LIMIT_S ; 
 int AR_PHY_FC_DYN2040_EN ; 
 int AR_PHY_FC_DYN2040_PRI_CH ; 
 int AR_PHY_FC_ENABLE_DAC_FIFO ; 
 int AR_PHY_FC_HT_EN ; 
 int AR_PHY_FC_SHORT_GI_40 ; 
 int AR_PHY_FC_SINGLE_HT_LTF1 ; 
 int AR_PHY_FC_WALSH ; 
 int /*<<< orphan*/  AR_PHY_TURBO ; 
 scalar_t__ FUNC0 (struct ath_hw*) ; 
 scalar_t__ CHANNEL_A_HT40PLUS ; 
 scalar_t__ CHANNEL_G_HT40PLUS ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*) ; 
 scalar_t__ FUNC2 (struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*) ; 
 int FUNC4 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hw*) ; 

__attribute__((used)) static void FUNC7(struct ath_hw *ah,
				       struct ath9k_channel *chan)
{
	u32 phymode;
	u32 enableDacFifo = 0;

	if (FUNC0(ah))
		enableDacFifo = (FUNC4(ah, AR_PHY_TURBO) &
					 AR_PHY_FC_ENABLE_DAC_FIFO);

	phymode = AR_PHY_FC_HT_EN | AR_PHY_FC_SHORT_GI_40
		| AR_PHY_FC_SINGLE_HT_LTF1 | AR_PHY_FC_WALSH | enableDacFifo;

	if (FUNC2(chan)) {
		phymode |= AR_PHY_FC_DYN2040_EN;

		if ((chan->chanmode == CHANNEL_A_HT40PLUS) ||
		    (chan->chanmode == CHANNEL_G_HT40PLUS))
			phymode |= AR_PHY_FC_DYN2040_PRI_CH;

	}
	FUNC5(ah, AR_PHY_TURBO, phymode);

	FUNC6(ah);

	FUNC1(ah);

	FUNC5(ah, AR_GTXTO, 25 << AR_GTXTO_TIMEOUT_LIMIT_S);
	FUNC5(ah, AR_CST, 0xF << AR_CST_TIMEOUT_LIMIT_S);

	FUNC3(ah);
}