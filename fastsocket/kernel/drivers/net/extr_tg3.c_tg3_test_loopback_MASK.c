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
typedef  int u64 ;
typedef  int u32 ;
struct tg3 {int dma_limit; int phy_flags; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ ASIC_REV_5780 ; 
 int /*<<< orphan*/  CPMU_PRESENT ; 
 int EIO ; 
 int /*<<< orphan*/  ENABLE_RSS ; 
 int ETH_FRAME_LEN ; 
 int ETH_HLEN ; 
 int /*<<< orphan*/  JUMBO_RING_ENABLE ; 
 int MAC_RSS_INDIR_TBL_0 ; 
 int /*<<< orphan*/  MAC_TX_STATUS ; 
 size_t TG3_EXT_LOOPB_TEST ; 
 int TG3_JMB_LOOPBACK_FAILED ; 
 int TG3_LOOPBACK_FAILED ; 
 size_t TG3_MAC_LOOPB_TEST ; 
 int TG3_PHYFLG_EEE_CAP ; 
 int TG3_PHYFLG_ENABLE_APD ; 
 int TG3_PHYFLG_PHY_SERDES ; 
 size_t TG3_PHY_LOOPB_TEST ; 
 int TG3_RSS_INDIR_TBL_SIZE ; 
 int TG3_STD_LOOPBACK_FAILED ; 
 int TG3_TSO_LOOPBACK_FAILED ; 
 int /*<<< orphan*/  TSO_CAPABLE ; 
 int TX_STATUS_LINK_UP ; 
 int /*<<< orphan*/  USE_PHYLIB ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct tg3*) ; 
 scalar_t__ FUNC3 (struct tg3*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tg3*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct tg3*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct tg3*,int) ; 
 int FUNC7 (struct tg3*,int) ; 
 scalar_t__ FUNC8 (struct tg3*,int,int) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,int) ; 

__attribute__((used)) static int FUNC11(struct tg3 *tp, u64 *data, bool do_extlpbk)
{
	int err = -EIO;
	u32 eee_cap;
	u32 jmb_pkt_sz = 9000;

	if (tp->dma_limit)
		jmb_pkt_sz = tp->dma_limit - ETH_HLEN;

	eee_cap = tp->phy_flags & TG3_PHYFLG_EEE_CAP;
	tp->phy_flags &= ~TG3_PHYFLG_EEE_CAP;

	if (!FUNC1(tp->dev)) {
		data[TG3_MAC_LOOPB_TEST] = TG3_LOOPBACK_FAILED;
		data[TG3_PHY_LOOPB_TEST] = TG3_LOOPBACK_FAILED;
		if (do_extlpbk)
			data[TG3_EXT_LOOPB_TEST] = TG3_LOOPBACK_FAILED;
		goto done;
	}

	err = FUNC7(tp, true);
	if (err) {
		data[TG3_MAC_LOOPB_TEST] = TG3_LOOPBACK_FAILED;
		data[TG3_PHY_LOOPB_TEST] = TG3_LOOPBACK_FAILED;
		if (do_extlpbk)
			data[TG3_EXT_LOOPB_TEST] = TG3_LOOPBACK_FAILED;
		goto done;
	}

	if (FUNC3(tp, ENABLE_RSS)) {
		int i;

		/* Reroute all rx packets to the 1st queue */
		for (i = MAC_RSS_INDIR_TBL_0;
		     i < MAC_RSS_INDIR_TBL_0 + TG3_RSS_INDIR_TBL_SIZE; i += 4)
			FUNC10(i, 0x0);
	}

	/* HW errata - mac loopback fails in some cases on 5780.
	 * Normal traffic and PHY loopback are not affected by
	 * errata.  Also, the MAC loopback test is deprecated for
	 * all newer ASIC revisions.
	 */
	if (FUNC2(tp) != ASIC_REV_5780 &&
	    !FUNC3(tp, CPMU_PRESENT)) {
		FUNC4(tp, true);

		if (FUNC8(tp, ETH_FRAME_LEN, false))
			data[TG3_MAC_LOOPB_TEST] |= TG3_STD_LOOPBACK_FAILED;

		if (FUNC3(tp, JUMBO_RING_ENABLE) &&
		    FUNC8(tp, jmb_pkt_sz + ETH_HLEN, false))
			data[TG3_MAC_LOOPB_TEST] |= TG3_JMB_LOOPBACK_FAILED;

		FUNC4(tp, false);
	}

	if (!(tp->phy_flags & TG3_PHYFLG_PHY_SERDES) &&
	    !FUNC3(tp, USE_PHYLIB)) {
		int i;

		FUNC5(tp, 0, false);

		/* Wait for link */
		for (i = 0; i < 100; i++) {
			if (FUNC9(MAC_TX_STATUS) & TX_STATUS_LINK_UP)
				break;
			FUNC0(1);
		}

		if (FUNC8(tp, ETH_FRAME_LEN, false))
			data[TG3_PHY_LOOPB_TEST] |= TG3_STD_LOOPBACK_FAILED;
		if (FUNC3(tp, TSO_CAPABLE) &&
		    FUNC8(tp, ETH_FRAME_LEN, true))
			data[TG3_PHY_LOOPB_TEST] |= TG3_TSO_LOOPBACK_FAILED;
		if (FUNC3(tp, JUMBO_RING_ENABLE) &&
		    FUNC8(tp, jmb_pkt_sz + ETH_HLEN, false))
			data[TG3_PHY_LOOPB_TEST] |= TG3_JMB_LOOPBACK_FAILED;

		if (do_extlpbk) {
			FUNC5(tp, 0, true);

			/* All link indications report up, but the hardware
			 * isn't really ready for about 20 msec.  Double it
			 * to be sure.
			 */
			FUNC0(40);

			if (FUNC8(tp, ETH_FRAME_LEN, false))
				data[TG3_EXT_LOOPB_TEST] |=
							TG3_STD_LOOPBACK_FAILED;
			if (FUNC3(tp, TSO_CAPABLE) &&
			    FUNC8(tp, ETH_FRAME_LEN, true))
				data[TG3_EXT_LOOPB_TEST] |=
							TG3_TSO_LOOPBACK_FAILED;
			if (FUNC3(tp, JUMBO_RING_ENABLE) &&
			    FUNC8(tp, jmb_pkt_sz + ETH_HLEN, false))
				data[TG3_EXT_LOOPB_TEST] |=
							TG3_JMB_LOOPBACK_FAILED;
		}

		/* Re-enable gphy autopowerdown. */
		if (tp->phy_flags & TG3_PHYFLG_ENABLE_APD)
			FUNC6(tp, true);
	}

	err = (data[TG3_MAC_LOOPB_TEST] | data[TG3_PHY_LOOPB_TEST] |
	       data[TG3_EXT_LOOPB_TEST]) ? -EIO : 0;

done:
	tp->phy_flags |= eee_cap;

	return err;
}