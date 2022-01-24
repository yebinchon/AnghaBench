#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct txentry_desc {int dummy; } ;
struct skb_frame_desc {TYPE_3__* entry; } ;
struct rt2x00_intf {TYPE_3__* beacon; } ;
struct rt2x00_dev {TYPE_2__* ops; int /*<<< orphan*/  hw; } ;
struct ieee80211_vif {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  skb; } ;
struct TYPE_6__ {TYPE_1__* lib; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* write_beacon ) (TYPE_3__*,struct txentry_desc*) ;} ;

/* Variables and functions */
 int ENOBUFS ; 
 int ENOMEM ; 
 struct skb_frame_desc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC2 (struct skb_frame_desc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2x00_dev*,int /*<<< orphan*/ ,struct txentry_desc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,struct txentry_desc*) ; 
 scalar_t__ FUNC6 (int) ; 
 struct rt2x00_intf* FUNC7 (struct ieee80211_vif*) ; 

int FUNC8(struct rt2x00_dev *rt2x00dev,
				     struct ieee80211_vif *vif)
{
	struct rt2x00_intf *intf = FUNC7(vif);
	struct skb_frame_desc *skbdesc;
	struct txentry_desc txdesc;

	if (FUNC6(!intf->beacon))
		return -ENOBUFS;

	/*
	 * Clean up the beacon skb.
	 */
	FUNC4(intf->beacon);

	intf->beacon->skb = FUNC1(rt2x00dev->hw, vif);
	if (!intf->beacon->skb)
		return -ENOMEM;

	/*
	 * Copy all TX descriptor information into txdesc,
	 * after that we are free to use the skb->cb array
	 * for our information.
	 */
	FUNC3(rt2x00dev, intf->beacon->skb, &txdesc, NULL);

	/*
	 * Fill in skb descriptor
	 */
	skbdesc = FUNC0(intf->beacon->skb);
	FUNC2(skbdesc, 0, sizeof(*skbdesc));
	skbdesc->entry = intf->beacon;

	/*
	 * Send beacon to hardware.
	 */
	rt2x00dev->ops->lib->write_beacon(intf->beacon, &txdesc);

	return 0;

}