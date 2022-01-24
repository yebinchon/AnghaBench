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
struct sk_buff {int dummy; } ;
struct mwl8k_priv {int capture_beacon; int /*<<< orphan*/  finalize_join_worker; int /*<<< orphan*/ * beacon_skb; int /*<<< orphan*/  capture_bssid; } ;
struct ieee80211_hw {struct mwl8k_priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(struct ieee80211_hw *hw,
				     struct sk_buff *skb)
{
	struct mwl8k_priv *priv = hw->priv;

	priv->capture_beacon = false;
	FUNC1(priv->capture_bssid, 0, ETH_ALEN);

	/*
	 * Use GFP_ATOMIC as rxq_process is called from
	 * the primary interrupt handler, memory allocation call
	 * must not sleep.
	 */
	priv->beacon_skb = FUNC2(skb, GFP_ATOMIC);
	if (priv->beacon_skb != NULL)
		FUNC0(hw, &priv->finalize_join_worker);
}