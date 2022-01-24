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
typedef  scalar_t__ u64 ;
typedef  int u32 ;
struct sk_buff {int dummy; } ;
struct ieee80211_vif {scalar_t__ drv_priv; } ;
struct ath5k_vif {struct ath5k_buf* bbuf; } ;
struct ath5k_hw {size_t bhalq; int bmisscount; scalar_t__ opmode; int num_ap_vifs; int num_mesh_vifs; int bintval; int /*<<< orphan*/  bsent; int /*<<< orphan*/  hw; TYPE_1__* cabq; int /*<<< orphan*/ * txqs; struct ieee80211_vif** bslot; int /*<<< orphan*/  reset_work; } ;
struct ath5k_buf {int /*<<< orphan*/  desc; scalar_t__ daddr; int /*<<< orphan*/ * skb; } ;
struct TYPE_2__ {scalar_t__ txq_len; scalar_t__ txq_max; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ath5k_hw*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct ath5k_hw*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ATH5K_DEBUG_BEACON ; 
 int /*<<< orphan*/  ATH5K_DEBUG_RESET ; 
 int /*<<< orphan*/  FUNC2 (struct ath5k_hw*,char*,...) ; 
 int ATH_BCBUF ; 
 scalar_t__ NL80211_IFTYPE_AP ; 
 scalar_t__ NL80211_IFTYPE_MESH_POINT ; 
 scalar_t__ NL80211_IFTYPE_MONITOR ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
 int FUNC3 (scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct ieee80211_vif*) ; 
 scalar_t__ FUNC5 (struct ath5k_hw*) ; 
 scalar_t__ FUNC6 (struct ath5k_hw*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct ath5k_hw*,size_t,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct ath5k_hw*,size_t) ; 
 int FUNC9 (struct ath5k_hw*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct sk_buff*,TYPE_1__*) ; 
 struct sk_buff* FUNC11 (int /*<<< orphan*/ ,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct ath5k_hw*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int) ; 

__attribute__((used)) static void
FUNC15(struct ath5k_hw *ah)
{
	struct ieee80211_vif *vif;
	struct ath5k_vif *avf;
	struct ath5k_buf *bf;
	struct sk_buff *skb;
	int err;

	FUNC1(ah, ATH5K_DEBUG_BEACON, "in beacon_send\n");

	/*
	 * Check if the previous beacon has gone out.  If
	 * not, don't don't try to post another: skip this
	 * period and wait for the next.  Missed beacons
	 * indicate a problem and should not occur.  If we
	 * miss too many consecutive beacons reset the device.
	 */
	if (FUNC14(FUNC6(ah, ah->bhalq) != 0)) {
		ah->bmisscount++;
		FUNC0(ah, ATH5K_DEBUG_BEACON,
			"missed %u consecutive beacons\n", ah->bmisscount);
		if (ah->bmisscount > 10) {	/* NB: 10 is a guess */
			FUNC0(ah, ATH5K_DEBUG_BEACON,
				"stuck beacon time (%u missed)\n",
				ah->bmisscount);
			FUNC0(ah, ATH5K_DEBUG_RESET,
				  "stuck beacon, resetting\n");
			FUNC12(ah->hw, &ah->reset_work);
		}
		return;
	}
	if (FUNC14(ah->bmisscount != 0)) {
		FUNC0(ah, ATH5K_DEBUG_BEACON,
			"resume beacon xmit after %u misses\n",
			ah->bmisscount);
		ah->bmisscount = 0;
	}

	if ((ah->opmode == NL80211_IFTYPE_AP && ah->num_ap_vifs +
			ah->num_mesh_vifs > 1) ||
			ah->opmode == NL80211_IFTYPE_MESH_POINT) {
		u64 tsf = FUNC5(ah);
		u32 tsftu = FUNC3(tsf);
		int slot = ((tsftu % ah->bintval) * ATH_BCBUF) / ah->bintval;
		vif = ah->bslot[(slot + 1) % ATH_BCBUF];
		FUNC0(ah, ATH5K_DEBUG_BEACON,
			"tsf %llx tsftu %x intval %u slot %u vif %p\n",
			(unsigned long long)tsf, tsftu, ah->bintval, slot, vif);
	} else /* only one interface */
		vif = ah->bslot[0];

	if (!vif)
		return;

	avf = (void *)vif->drv_priv;
	bf = avf->bbuf;

	/*
	 * Stop any current dma and put the new frame on the queue.
	 * This should never fail since we check above that no frames
	 * are still pending on the queue.
	 */
	if (FUNC14(FUNC9(ah, ah->bhalq))) {
		FUNC2(ah, "beacon queue %u didn't start/stop ?\n", ah->bhalq);
		/* NB: hw still stops DMA, so proceed */
	}

	/* refresh the beacon for AP or MESH mode */
	if (ah->opmode == NL80211_IFTYPE_AP ||
	    ah->opmode == NL80211_IFTYPE_MESH_POINT) {
		err = FUNC4(ah->hw, vif);
		if (err)
			return;
	}

	if (FUNC14(bf->skb == NULL || ah->opmode == NL80211_IFTYPE_STATION ||
		     ah->opmode == NL80211_IFTYPE_MONITOR)) {
		FUNC2(ah, "bf=%p bf_skb=%p\n", bf, bf->skb);
		return;
	}

	FUNC13(ah, bf->skb, &ah->txqs[ah->bhalq]);

	FUNC7(ah, ah->bhalq, bf->daddr);
	FUNC8(ah, ah->bhalq);
	FUNC0(ah, ATH5K_DEBUG_BEACON, "TXDP[%u] = %llx (%p)\n",
		ah->bhalq, (unsigned long long)bf->daddr, bf->desc);

	skb = FUNC11(ah->hw, vif);
	while (skb) {
		FUNC10(ah->hw, skb, ah->cabq);

		if (ah->cabq->txq_len >= ah->cabq->txq_max)
			break;

		skb = FUNC11(ah->hw, vif);
	}

	ah->bsent++;
}