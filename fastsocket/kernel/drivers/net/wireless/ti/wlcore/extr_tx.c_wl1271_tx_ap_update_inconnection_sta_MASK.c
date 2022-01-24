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
struct wl1271_tx_hw_descr {int dummy; } ;
struct wl1271 {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
struct ieee80211_hdr {int /*<<< orphan*/  addr1; int /*<<< orphan*/  frame_control; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wl1271*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct wl1271 *wl,
						 struct sk_buff *skb)
{
	struct ieee80211_hdr *hdr;

	/*
	 * add the station to the known list before transmitting the
	 * authentication response. this way it won't get de-authed by FW
	 * when transmitting too soon.
	 */
	hdr = (struct ieee80211_hdr *)(skb->data +
				       sizeof(struct wl1271_tx_hw_descr));
	if (FUNC0(hdr->frame_control))
		FUNC1(wl, hdr->addr1);
}