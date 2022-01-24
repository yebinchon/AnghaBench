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
struct mwl8k_priv {int /*<<< orphan*/  radio_on; } ;
struct ieee80211_tx_control {int /*<<< orphan*/  sta; } ;
struct ieee80211_hw {int /*<<< orphan*/  wiphy; struct mwl8k_priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,int,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC4(struct ieee80211_hw *hw,
		     struct ieee80211_tx_control *control,
		     struct sk_buff *skb)
{
	struct mwl8k_priv *priv = hw->priv;
	int index = FUNC2(skb);

	if (!priv->radio_on) {
		FUNC3(hw->wiphy,
			    "dropped TX frame since radio disabled\n");
		FUNC0(skb);
		return;
	}

	FUNC1(hw, index, control->sta, skb);
}