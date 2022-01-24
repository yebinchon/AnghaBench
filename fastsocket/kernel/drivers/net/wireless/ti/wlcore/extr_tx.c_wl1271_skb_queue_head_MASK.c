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
typedef  size_t u8 ;
struct wl12xx_vif {size_t last_tx_hlid; int /*<<< orphan*/ * tx_queue_count; } ;
struct wl1271 {int /*<<< orphan*/  wl_lock; int /*<<< orphan*/ * tx_queue_count; TYPE_1__* links; int /*<<< orphan*/  flags; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * tx_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  WL1271_FLAG_DUMMY_PACKET_PENDING ; 
 size_t WL12XX_MAX_LINKS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct wl1271*,struct sk_buff*) ; 

__attribute__((used)) static void FUNC7(struct wl1271 *wl, struct wl12xx_vif *wlvif,
				  struct sk_buff *skb, u8 hlid)
{
	unsigned long flags;
	int q = FUNC5(FUNC1(skb));

	if (FUNC6(wl, skb)) {
		FUNC0(WL1271_FLAG_DUMMY_PACKET_PENDING, &wl->flags);
	} else {
		FUNC2(&wl->links[hlid].tx_queue[q], skb);

		/* make sure we dequeue the same packet next time */
		wlvif->last_tx_hlid = (hlid + WL12XX_MAX_LINKS - 1) %
				      WL12XX_MAX_LINKS;
	}

	FUNC3(&wl->wl_lock, flags);
	wl->tx_queue_count[q]++;
	if (wlvif)
		wlvif->tx_queue_count[q]++;
	FUNC4(&wl->wl_lock, flags);
}