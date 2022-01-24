#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct sta_info {int aid; int flags; int /*<<< orphan*/  users; int /*<<< orphan*/  tx_buf; } ;
struct sk_buff {int dummy; } ;
struct net_device {int /*<<< orphan*/  dev_addr; } ;
struct ieee80211_hdr {int addr1; int /*<<< orphan*/  addr2; int /*<<< orphan*/  duration_id; int /*<<< orphan*/  frame_control; } ;
struct hostap_80211_rx_status {int dummy; } ;
struct TYPE_6__ {TYPE_5__* ap; struct net_device* dev; } ;
typedef  TYPE_1__ local_info_t ;
struct TYPE_7__ {int /*<<< orphan*/  sta_table_lock; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  DEBUG_AP ; 
 int /*<<< orphan*/  DEBUG_PS ; 
 int /*<<< orphan*/  DEBUG_PS2 ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int MAX_AID_TABLE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int WLAN_STA_PS ; 
 int WLAN_STA_TIM ; 
 struct sta_info* FUNC2 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,struct sta_info*,struct sk_buff*) ; 
 struct sk_buff* FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC15(local_info_t *local,
			  struct ieee80211_hdr *hdr,
			  struct hostap_80211_rx_status *rx_stats)
{
	struct net_device *dev = local->dev;
	struct sta_info *sta;
	u16 aid;
	struct sk_buff *skb;

	FUNC1(DEBUG_PS2, "handle_pspoll: BSSID=%pM, TA=%pM PWRMGT=%d\n",
	       hdr->addr1, hdr->addr2, !!FUNC6(hdr->frame_control));

	if (FUNC8(hdr->addr1, dev->dev_addr, ETH_ALEN)) {
		FUNC1(DEBUG_AP,
		       "handle_pspoll - addr1(BSSID)=%pM not own MAC\n",
		       hdr->addr1);
		return;
	}

	aid = FUNC7(hdr->duration_id);
	if ((aid & (FUNC0(15) | FUNC0(14))) != (FUNC0(15) | FUNC0(14))) {
		FUNC1(DEBUG_PS, "   PSPOLL and AID[15:14] not set\n");
		return;
	}
	aid &= ~(FUNC0(15) | FUNC0(14));
	if (aid == 0 || aid > MAX_AID_TABLE_SIZE) {
		FUNC1(DEBUG_PS, "   invalid aid=%d\n", aid);
		return;
	}
	FUNC1(DEBUG_PS2, "   aid=%d\n", aid);

	FUNC13(&local->ap->sta_table_lock);
	sta = FUNC2(local->ap, hdr->addr2);
	if (sta)
		FUNC4(&sta->users);
	FUNC14(&local->ap->sta_table_lock);

	if (sta == NULL) {
		FUNC1(DEBUG_PS, "   STA not found\n");
		return;
	}
	if (sta->aid != aid) {
		FUNC1(DEBUG_PS, "   received aid=%i does not match with "
		       "assoc.aid=%d\n", aid, sta->aid);
		return;
	}

	/* FIX: todo:
	 * - add timeout for buffering (clear aid in TIM vector if buffer timed
	 *   out (expiry time must be longer than ListenInterval for
	 *   the corresponding STA; "8802-11: 11.2.1.9 AP aging function"
	 * - what to do, if buffered, pspolled, and sent frame is not ACKed by
	 *   sta; store buffer for later use and leave TIM aid bit set? use
	 *   TX event to check whether frame was ACKed?
	 */

	while ((skb = FUNC10(&sta->tx_buf)) != NULL) {
		/* send buffered frame .. */
		FUNC1(DEBUG_PS2, "Sending buffered frame to STA after PS POLL"
		       " (buffer_count=%d)\n", FUNC12(&sta->tx_buf));

		FUNC9(local, sta, skb);

		if (sta->flags & WLAN_STA_PS) {
			/* send only one buffered packet per PS Poll */
			/* FIX: should ignore further PS Polls until the
			 * buffered packet that was just sent is acknowledged
			 * (Tx or TxExc event) */
			break;
		}
	}

	if (FUNC11(&sta->tx_buf)) {
		/* try to clear aid from TIM */
		if (!(sta->flags & WLAN_STA_TIM))
			FUNC1(DEBUG_PS2,  "Re-unsetting TIM for aid %d\n",
			       aid);
		FUNC5(local, aid, 0);
		sta->flags &= ~WLAN_STA_TIM;
	}

	FUNC3(&sta->users);
}