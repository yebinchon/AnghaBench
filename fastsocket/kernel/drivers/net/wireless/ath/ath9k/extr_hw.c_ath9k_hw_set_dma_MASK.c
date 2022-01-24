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
struct TYPE_2__ {scalar_t__ rx_status_len; } ;
struct ath_hw {int tx_trig_level; TYPE_1__ caps; } ;
struct ath_common {scalar_t__ rx_bufsize; } ;

/* Variables and functions */
 int AR_9285_PCU_TXBUF_CTRL_USABLE_SIZE ; 
 int AR_9340_PCU_TXBUF_CTRL_USABLE_SIZE ; 
 int /*<<< orphan*/  AR_AHB_MODE ; 
 int /*<<< orphan*/  AR_AHB_PREFETCH_RD_EN ; 
 int /*<<< orphan*/  AR_FTRIG ; 
 int /*<<< orphan*/  AR_PCU_TXBUF_CTRL ; 
 int AR_PCU_TXBUF_CTRL_USABLE_SIZE ; 
 int /*<<< orphan*/  AR_RXBP_THRESH ; 
 int /*<<< orphan*/  AR_RXBP_THRESH_HP ; 
 int /*<<< orphan*/  AR_RXBP_THRESH_LP ; 
 int /*<<< orphan*/  AR_RXCFG ; 
 int /*<<< orphan*/  AR_RXCFG_DMASZ_128B ; 
 int /*<<< orphan*/  AR_RXCFG_DMASZ_MASK ; 
 int /*<<< orphan*/  AR_RXFIFO_CFG ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hw*) ; 
 scalar_t__ FUNC1 (struct ath_hw*) ; 
 scalar_t__ FUNC2 (struct ath_hw*) ; 
 scalar_t__ FUNC3 (struct ath_hw*) ; 
 int /*<<< orphan*/  AR_TXCFG ; 
 int /*<<< orphan*/  AR_TXCFG_DMASZ_128B ; 
 int /*<<< orphan*/  AR_TXCFG_DMASZ_MASK ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 
 struct ath_common* FUNC10 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC11 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC12 (struct ath_hw*,scalar_t__) ; 

__attribute__((used)) static inline void FUNC13(struct ath_hw *ah)
{
	struct ath_common *common = FUNC10(ah);
	int txbuf_size;

	FUNC4(ah);

	/*
	 * set AHB_MODE not to do cacheline prefetches
	*/
	if (!FUNC2(ah))
		FUNC8(ah, AR_AHB_MODE, AR_AHB_PREFETCH_RD_EN);

	/*
	 * let mac dma reads be in 128 byte chunks
	 */
	FUNC6(ah, AR_TXCFG, AR_TXCFG_DMASZ_128B, AR_TXCFG_DMASZ_MASK);

	FUNC5(ah);

	/*
	 * Restore TX Trigger Level to its pre-reset value.
	 * The initial value depends on whether aggregation is enabled, and is
	 * adjusted whenever underruns are detected.
	 */
	if (!FUNC2(ah))
		FUNC7(ah, AR_TXCFG, AR_FTRIG, ah->tx_trig_level);

	FUNC4(ah);

	/*
	 * let mac dma writes be in 128 byte chunks
	 */
	FUNC6(ah, AR_RXCFG, AR_RXCFG_DMASZ_128B, AR_RXCFG_DMASZ_MASK);

	/*
	 * Setup receive FIFO threshold to hold off TX activities
	 */
	FUNC9(ah, AR_RXFIFO_CFG, 0x200);

	if (FUNC2(ah)) {
		FUNC7(ah, AR_RXBP_THRESH, AR_RXBP_THRESH_HP, 0x1);
		FUNC7(ah, AR_RXBP_THRESH, AR_RXBP_THRESH_LP, 0x1);

		FUNC12(ah, common->rx_bufsize -
			ah->caps.rx_status_len);
	}

	/*
	 * reduce the number of usable entries in PCU TXBUF to avoid
	 * wrap around issues.
	 */
	if (FUNC1(ah)) {
		/* For AR9285 the number of Fifos are reduced to half.
		 * So set the usable tx buf size also to half to
		 * avoid data/delimiter underruns
		 */
		txbuf_size = AR_9285_PCU_TXBUF_CTRL_USABLE_SIZE;
	} else if (FUNC3(ah)) {
		/* Uses fewer entries for AR934x v1.3+ to prevent rx overruns */
		txbuf_size = AR_9340_PCU_TXBUF_CTRL_USABLE_SIZE;
	} else {
		txbuf_size = AR_PCU_TXBUF_CTRL_USABLE_SIZE;
	}

	if (!FUNC0(ah))
		FUNC9(ah, AR_PCU_TXBUF_CTRL, txbuf_size);

	FUNC5(ah);

	if (FUNC2(ah))
		FUNC11(ah);
}