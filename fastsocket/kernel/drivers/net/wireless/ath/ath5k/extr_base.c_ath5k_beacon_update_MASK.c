#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct ieee80211_vif {scalar_t__ drv_priv; } ;
struct ieee80211_hw {struct ath5k_hw* priv; } ;
struct ath5k_vif {TYPE_1__* bbuf; } ;
struct ath5k_hw {int dummy; } ;
struct TYPE_3__ {struct sk_buff* skb; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct ath5k_hw*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath5k_hw*,TYPE_1__*) ; 
 struct sk_buff* FUNC3 (struct ieee80211_hw*,struct ieee80211_vif*) ; 

int
FUNC4(struct ieee80211_hw *hw, struct ieee80211_vif *vif)
{
	int ret;
	struct ath5k_hw *ah = hw->priv;
	struct ath5k_vif *avf;
	struct sk_buff *skb;

	if (FUNC0(!vif)) {
		ret = -EINVAL;
		goto out;
	}

	skb = FUNC3(hw, vif);

	if (!skb) {
		ret = -ENOMEM;
		goto out;
	}

	avf = (void *)vif->drv_priv;
	FUNC2(ah, avf->bbuf);
	avf->bbuf->skb = skb;
	ret = FUNC1(ah, avf->bbuf);
out:
	return ret;
}