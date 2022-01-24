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
struct lbtf_private {int /*<<< orphan*/  hw; int /*<<< orphan*/  tx_work; struct sk_buff* skb_to_tx; } ;
struct ieee80211_tx_control {int dummy; } ;
struct ieee80211_hw {struct lbtf_private* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lbtf_wq ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct ieee80211_hw *hw,
		       struct ieee80211_tx_control *control,
		       struct sk_buff *skb)
{
	struct lbtf_private *priv = hw->priv;

	priv->skb_to_tx = skb;
	FUNC1(lbtf_wq, &priv->tx_work);
	/*
	 * queue will be restarted when we receive transmission feedback if
	 * there are no buffered multicast frames to send
	 */
	FUNC0(priv->hw);
}