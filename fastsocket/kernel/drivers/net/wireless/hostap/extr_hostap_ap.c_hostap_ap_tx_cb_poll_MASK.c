#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sta_info {int /*<<< orphan*/  flags; } ;
struct sk_buff {int len; scalar_t__ data; } ;
struct ieee80211_hdr {int /*<<< orphan*/  addr1; } ;
struct ap_data {TYPE_2__* local; int /*<<< orphan*/  sta_table_lock; } ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_AP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WLAN_STA_PENDING_POLL ; 
 struct sta_info* FUNC1 (struct ap_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct sk_buff *skb, int ok, void *data)
{
	struct ap_data *ap = data;
	struct ieee80211_hdr *hdr;
	struct sta_info *sta;

	if (skb->len < 24)
		goto fail;
	hdr = (struct ieee80211_hdr *) skb->data;
	if (ok) {
		FUNC3(&ap->sta_table_lock);
		sta = FUNC1(ap, hdr->addr1);
		if (sta)
			sta->flags &= ~WLAN_STA_PENDING_POLL;
		FUNC4(&ap->sta_table_lock);
	} else {
		FUNC0(DEBUG_AP,
		       "%s: STA %pM did not ACK activity poll frame\n",
		       ap->local->dev->name, hdr->addr1);
	}

 fail:
	FUNC2(skb);
}