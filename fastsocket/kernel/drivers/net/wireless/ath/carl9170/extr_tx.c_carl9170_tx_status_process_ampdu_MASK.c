#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
struct sk_buff {scalar_t__ data; } ;
struct TYPE_7__ {TYPE_1__* rates; } ;
struct ieee80211_tx_info {int flags; TYPE_2__ status; } ;
struct ieee80211_sta {scalar_t__ drv_priv; } ;
struct ieee80211_hdr {int dummy; } ;
struct carl9170_sta_tid {scalar_t__ state; int /*<<< orphan*/  lock; } ;
struct carl9170_sta_info {TYPE_5__* stats; int /*<<< orphan*/ * agg; } ;
struct ar9170 {int dummy; } ;
struct TYPE_9__ {scalar_t__ cnt; scalar_t__ rix; } ;
struct TYPE_8__ {int mac_control; } ;
struct _carl9170_tx_superframe {TYPE_4__ s; TYPE_3__ f; scalar_t__ frame_data; } ;
struct TYPE_10__ {int clear; int req; scalar_t__ ampdu_ack_len; scalar_t__ ampdu_len; } ;
struct TYPE_6__ {int count; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR9170_TX_MAC_IMM_BA ; 
 scalar_t__ CARL9170_TID_STATE_IDLE ; 
 int IEEE80211_TX_CTL_AMPDU ; 
 int IEEE80211_TX_CTL_INJECTED ; 
 int IEEE80211_TX_STAT_ACK ; 
 int IEEE80211_TX_STAT_AMPDU ; 
 int IEEE80211_TX_STAT_AMPDU_NO_BACK ; 
 struct ieee80211_sta* FUNC0 (struct ar9170*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct ar9170*,struct carl9170_sta_tid*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hdr*) ; 
 size_t FUNC4 (struct ieee80211_hdr*) ; 
 scalar_t__ FUNC5 (int) ; 
 struct carl9170_sta_tid* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static void FUNC12(struct ar9170 *ar,
	struct sk_buff *skb, struct ieee80211_tx_info *txinfo)
{
	struct _carl9170_tx_superframe *super = (void *) skb->data;
	struct ieee80211_hdr *hdr = (void *) super->frame_data;
	struct ieee80211_sta *sta;
	struct carl9170_sta_info *sta_info;
	struct carl9170_sta_tid *tid_info;
	u8 tid;

	if (!(txinfo->flags & IEEE80211_TX_CTL_AMPDU) ||
	    txinfo->flags & IEEE80211_TX_CTL_INJECTED)
		return;

	FUNC7();
	sta = FUNC0(ar, skb);
	if (FUNC11(!sta))
		goto out_rcu;

	tid = FUNC4(hdr);

	sta_info = (void *) sta->drv_priv;
	tid_info = FUNC6(sta_info->agg[tid]);
	if (!tid_info)
		goto out_rcu;

	FUNC9(&tid_info->lock);
	if (FUNC5(tid_info->state >= CARL9170_TID_STATE_IDLE))
		FUNC1(ar, tid_info, FUNC3(hdr));

	if (sta_info->stats[tid].clear) {
		sta_info->stats[tid].clear = false;
		sta_info->stats[tid].req = false;
		sta_info->stats[tid].ampdu_len = 0;
		sta_info->stats[tid].ampdu_ack_len = 0;
	}

	sta_info->stats[tid].ampdu_len++;
	if (txinfo->status.rates[0].count == 1)
		sta_info->stats[tid].ampdu_ack_len++;

	if (!(txinfo->flags & IEEE80211_TX_STAT_ACK))
		sta_info->stats[tid].req = true;

	if (super->f.mac_control & FUNC2(AR9170_TX_MAC_IMM_BA)) {
		super->s.rix = sta_info->stats[tid].ampdu_len;
		super->s.cnt = sta_info->stats[tid].ampdu_ack_len;
		txinfo->flags |= IEEE80211_TX_STAT_AMPDU;
		if (sta_info->stats[tid].req)
			txinfo->flags |= IEEE80211_TX_STAT_AMPDU_NO_BACK;

		sta_info->stats[tid].clear = true;
	}
	FUNC10(&tid_info->lock);

out_rcu:
	FUNC8();
}