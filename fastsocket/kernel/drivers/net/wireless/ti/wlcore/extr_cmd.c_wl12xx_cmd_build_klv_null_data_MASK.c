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
struct TYPE_2__ {int /*<<< orphan*/  klv_template_id; } ;
struct wl12xx_vif {int /*<<< orphan*/  basic_rate; TYPE_1__ sta; int /*<<< orphan*/  role_id; } ;
struct wl1271 {int /*<<< orphan*/  hw; } ;
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct ieee80211_vif {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_TEMPL_KLV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ ,struct ieee80211_vif*) ; 
 int FUNC2 (struct wl1271*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 struct ieee80211_vif* FUNC4 (struct wl12xx_vif*) ; 

int FUNC5(struct wl1271 *wl,
				   struct wl12xx_vif *wlvif)
{
	struct ieee80211_vif *vif = FUNC4(wlvif);
	struct sk_buff *skb = NULL;
	int ret = -ENOMEM;

	skb = FUNC1(wl->hw, vif);
	if (!skb)
		goto out;

	ret = FUNC2(wl, wlvif->role_id, CMD_TEMPL_KLV,
				      skb->data, skb->len,
				      wlvif->sta.klv_template_id,
				      wlvif->basic_rate);

out:
	FUNC0(skb);
	if (ret)
		FUNC3("cmd build klv null data failed %d", ret);

	return ret;

}