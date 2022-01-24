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
typedef  int /*<<< orphan*/  u16 ;
struct txentry_desc {int /*<<< orphan*/  flags; } ;
struct sk_buff {scalar_t__ data; } ;
struct rt2x00_intf {int /*<<< orphan*/  seqno; } ;
struct rt2x00_dev {int /*<<< orphan*/  flags; int /*<<< orphan*/  cap_flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  vif; } ;
struct ieee80211_tx_info {int flags; TYPE_1__ control; } ;
struct ieee80211_hdr {int /*<<< orphan*/  seq_ctrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_QOS_DISABLED ; 
 int /*<<< orphan*/  ENTRY_TXD_FIRST_FRAGMENT ; 
 int /*<<< orphan*/  ENTRY_TXD_GENERATE_SEQ ; 
 int /*<<< orphan*/  IEEE80211_SCTL_FRAG ; 
 struct ieee80211_tx_info* FUNC0 (struct sk_buff*) ; 
 int IEEE80211_TX_CTL_ASSIGN_SEQ ; 
 int /*<<< orphan*/  REQUIRE_SW_SEQNO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct rt2x00_intf* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct rt2x00_dev *rt2x00dev,
						 struct sk_buff *skb,
						 struct txentry_desc *txdesc)
{
	struct ieee80211_tx_info *tx_info = FUNC0(skb);
	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;
	struct rt2x00_intf *intf = FUNC7(tx_info->control.vif);
	u16 seqno;

	if (!(tx_info->flags & IEEE80211_TX_CTL_ASSIGN_SEQ))
		return;

	FUNC2(ENTRY_TXD_GENERATE_SEQ, &txdesc->flags);

	if (!FUNC6(REQUIRE_SW_SEQNO, &rt2x00dev->cap_flags)) {
		/*
		 * rt2800 has a H/W (or F/W) bug, device incorrectly increase
		 * seqno on retransmited data (non-QOS) frames. To workaround
		 * the problem let's generate seqno in software if QOS is
		 * disabled.
		 */
		if (FUNC6(CONFIG_QOS_DISABLED, &rt2x00dev->flags))
			FUNC1(ENTRY_TXD_GENERATE_SEQ, &txdesc->flags);
		else
			/* H/W will generate sequence number */
			return;
	}

	/*
	 * The hardware is not able to insert a sequence number. Assign a
	 * software generated one here.
	 *
	 * This is wrong because beacons are not getting sequence
	 * numbers assigned properly.
	 *
	 * A secondary problem exists for drivers that cannot toggle
	 * sequence counting per-frame, since those will override the
	 * sequence counter given by mac80211.
	 */
	if (FUNC6(ENTRY_TXD_FIRST_FRAGMENT, &txdesc->flags))
		seqno = FUNC3(0x10, &intf->seqno);
	else
		seqno = FUNC4(&intf->seqno);

	hdr->seq_ctrl &= FUNC5(IEEE80211_SCTL_FRAG);
	hdr->seq_ctrl |= FUNC5(seqno);
}