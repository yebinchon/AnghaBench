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
typedef  int /*<<< orphan*/  u8 ;
struct modal_eep_header {int /*<<< orphan*/ * rxTxMarginCh; int /*<<< orphan*/ * bswAtten; int /*<<< orphan*/ * bswMargin; int /*<<< orphan*/ * xatten2Db; int /*<<< orphan*/ * xatten2Margin; int /*<<< orphan*/ * txRxAttenCh; } ;
struct ath_hw {int dummy; } ;
struct ar5416_eeprom_def {int dummy; } ;

/* Variables and functions */
 scalar_t__ AR5416_EEP_MINOR_VER_3 ; 
 scalar_t__ AR5416_VER_MASK ; 
 int /*<<< orphan*/  AR9280_PHY_RXGAIN_TXRX_ATTEN ; 
 int /*<<< orphan*/  AR9280_PHY_RXGAIN_TXRX_MARGIN ; 
 scalar_t__ AR_PHY_GAIN_2GHZ ; 
 int AR_PHY_GAIN_2GHZ_BSW_ATTEN ; 
 int AR_PHY_GAIN_2GHZ_BSW_MARGIN ; 
 int AR_PHY_GAIN_2GHZ_RXTX_MARGIN ; 
 int /*<<< orphan*/  AR_PHY_GAIN_2GHZ_XATTEN1_DB ; 
 int /*<<< orphan*/  AR_PHY_GAIN_2GHZ_XATTEN1_MARGIN ; 
 int /*<<< orphan*/  AR_PHY_GAIN_2GHZ_XATTEN2_DB ; 
 int /*<<< orphan*/  AR_PHY_GAIN_2GHZ_XATTEN2_MARGIN ; 
 scalar_t__ AR_PHY_RXGAIN ; 
 int AR_PHY_RXGAIN_TXRX_ATTEN ; 
 scalar_t__ FUNC0 (struct ath_hw*) ; 
 int FUNC1 (struct ath_hw*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*,scalar_t__,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct ath_hw *ah,
				  struct modal_eep_header *pModal,
				  struct ar5416_eeprom_def *eep,
				  u8 txRxAttenLocal, int regChainOffset, int i)
{
	if (AR5416_VER_MASK >= AR5416_EEP_MINOR_VER_3) {
		txRxAttenLocal = pModal->txRxAttenCh[i];

		if (FUNC0(ah)) {
			FUNC2(ah, AR_PHY_GAIN_2GHZ + regChainOffset,
			      AR_PHY_GAIN_2GHZ_XATTEN1_MARGIN,
			      pModal->bswMargin[i]);
			FUNC2(ah, AR_PHY_GAIN_2GHZ + regChainOffset,
			      AR_PHY_GAIN_2GHZ_XATTEN1_DB,
			      pModal->bswAtten[i]);
			FUNC2(ah, AR_PHY_GAIN_2GHZ + regChainOffset,
			      AR_PHY_GAIN_2GHZ_XATTEN2_MARGIN,
			      pModal->xatten2Margin[i]);
			FUNC2(ah, AR_PHY_GAIN_2GHZ + regChainOffset,
			      AR_PHY_GAIN_2GHZ_XATTEN2_DB,
			      pModal->xatten2Db[i]);
		} else {
			FUNC3(ah, AR_PHY_GAIN_2GHZ + regChainOffset,
			  (FUNC1(ah, AR_PHY_GAIN_2GHZ + regChainOffset) &
			   ~AR_PHY_GAIN_2GHZ_BSW_MARGIN)
			  | FUNC4(pModal-> bswMargin[i],
			       AR_PHY_GAIN_2GHZ_BSW_MARGIN));
			FUNC3(ah, AR_PHY_GAIN_2GHZ + regChainOffset,
			  (FUNC1(ah, AR_PHY_GAIN_2GHZ + regChainOffset) &
			   ~AR_PHY_GAIN_2GHZ_BSW_ATTEN)
			  | FUNC4(pModal->bswAtten[i],
			       AR_PHY_GAIN_2GHZ_BSW_ATTEN));
		}
	}

	if (FUNC0(ah)) {
		FUNC2(ah,
		      AR_PHY_RXGAIN + regChainOffset,
		      AR9280_PHY_RXGAIN_TXRX_ATTEN, txRxAttenLocal);
		FUNC2(ah,
		      AR_PHY_RXGAIN + regChainOffset,
		      AR9280_PHY_RXGAIN_TXRX_MARGIN, pModal->rxTxMarginCh[i]);
	} else {
		FUNC3(ah,
			  AR_PHY_RXGAIN + regChainOffset,
			  (FUNC1(ah, AR_PHY_RXGAIN + regChainOffset) &
			   ~AR_PHY_RXGAIN_TXRX_ATTEN)
			  | FUNC4(txRxAttenLocal, AR_PHY_RXGAIN_TXRX_ATTEN));
		FUNC3(ah,
			  AR_PHY_GAIN_2GHZ + regChainOffset,
			  (FUNC1(ah, AR_PHY_GAIN_2GHZ + regChainOffset) &
			   ~AR_PHY_GAIN_2GHZ_RXTX_MARGIN) |
			  FUNC4(pModal->rxTxMarginCh[i], AR_PHY_GAIN_2GHZ_RXTX_MARGIN));
	}
}