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
 int AR_PHY_GC_DYN2040_EN ; 
 int AR_PHY_GC_DYN2040_PRI_CH ; 
 int AR_PHY_GC_ENABLE_DAC_FIFO ; 
 int AR_PHY_GC_GF_DETECT_EN ; 
 int AR_PHY_GC_HT_EN ; 
 int AR_PHY_GC_SHORT_GI_40 ; 
 int AR_PHY_GC_SINGLE_HT_LTF1 ; 
 int /*<<< orphan*/  AR_PHY_GEN_CTRL ; 
 scalar_t__ CHANNEL_A_HT40PLUS ; 
 scalar_t__ CHANNEL_G_HT40PLUS ; 
 scalar_t__ FUNC0 (struct ath9k_channel*) ; 
 int FUNC1 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*) ; 

__attribute__((used)) static void FUNC4(struct ath_hw *ah,
				       struct ath9k_channel *chan)
{
	u32 phymode;
	u32 enableDacFifo = 0;

	enableDacFifo =
		(FUNC1(ah, AR_PHY_GEN_CTRL) & AR_PHY_GC_ENABLE_DAC_FIFO);

	/* Enable 11n HT, 20 MHz */
	phymode = AR_PHY_GC_HT_EN | AR_PHY_GC_SINGLE_HT_LTF1 |
		  AR_PHY_GC_SHORT_GI_40 | enableDacFifo;

	/* Configure baseband for dynamic 20/40 operation */
	if (FUNC0(chan)) {
		phymode |= AR_PHY_GC_DYN2040_EN;
		/* Configure control (primary) channel at +-10MHz */
		if ((chan->chanmode == CHANNEL_A_HT40PLUS) ||
		    (chan->chanmode == CHANNEL_G_HT40PLUS))
			phymode |= AR_PHY_GC_DYN2040_PRI_CH;

	}

	/* make sure we preserve INI settings */
	phymode |= FUNC1(ah, AR_PHY_GEN_CTRL);
	/* turn off Green Field detection for STA for now */
	phymode &= ~AR_PHY_GC_GF_DETECT_EN;

	FUNC2(ah, AR_PHY_GEN_CTRL, phymode);

	/* Configure MAC for 20/40 operation */
	FUNC3(ah);

	/* global transmit timeout (25 TUs default)*/
	FUNC2(ah, AR_GTXTO, 25 << AR_GTXTO_TIMEOUT_LIMIT_S);
	/* carrier sense timeout */
	FUNC2(ah, AR_CST, 0xF << AR_CST_TIMEOUT_LIMIT_S);
}