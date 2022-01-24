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
struct iwl_priv {int dummy; } ;
struct ieee80211_tx_control {int /*<<< orphan*/  sta; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 struct iwl_priv* FUNC0 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,struct sk_buff*) ; 
 scalar_t__ FUNC2 (struct iwl_priv*,int /*<<< orphan*/ ,struct sk_buff*) ; 

__attribute__((used)) static void FUNC3(struct ieee80211_hw *hw,
			  struct ieee80211_tx_control *control,
			  struct sk_buff *skb)
{
	struct iwl_priv *priv = FUNC0(hw);

	if (FUNC2(priv, control->sta, skb))
		FUNC1(hw, skb);
}