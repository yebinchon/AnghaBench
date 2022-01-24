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
typedef  scalar_t__ u32 ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  rates; int /*<<< orphan*/  vif; } ;
struct ieee80211_tx_info {TYPE_1__ control; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_channel {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct ieee80211_tx_info* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_hw*,struct sk_buff*,struct ieee80211_channel*) ; 
 void FUNC6 (struct ieee80211_hw*,struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_hw*,struct sk_buff*,struct ieee80211_channel*) ; 
 scalar_t__ rctbl ; 
 int /*<<< orphan*/  wmediumd_portid ; 

__attribute__((used)) static void FUNC8(struct ieee80211_hw *hw,
				    struct sk_buff *skb,
				    struct ieee80211_channel *chan)
{
	u32 _pid = FUNC0(wmediumd_portid);

	if (rctbl) {
		struct ieee80211_tx_info *txi = FUNC2(skb);
		FUNC4(txi->control.vif, NULL, skb,
				       txi->control.rates,
				       FUNC1(txi->control.rates));
	}

	FUNC5(hw, skb, chan);

	if (_pid)
		return FUNC6(hw, skb, _pid);

	FUNC7(hw, skb, chan);
	FUNC3(skb);
}