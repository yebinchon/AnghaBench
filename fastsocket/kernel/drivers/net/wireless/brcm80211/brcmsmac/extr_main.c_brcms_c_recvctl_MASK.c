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
struct sk_buff {int len; scalar_t__ data; } ;
struct ieee80211_rx_status {int dummy; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;
struct d11rxhdr {int dummy; } ;
struct brcms_c_info {TYPE_1__* pub; TYPE_2__* hw; } ;
typedef  int /*<<< orphan*/  rx_status ;
struct TYPE_4__ {scalar_t__ suspended_fifos; } ;
struct TYPE_3__ {int /*<<< orphan*/  ieee_hw; } ;

/* Variables and functions */
 int D11_PHY_HDR_LEN ; 
 int FCS_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct ieee80211_rx_status*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_rx_status*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct brcms_c_info*,struct d11rxhdr*,struct sk_buff*,struct ieee80211_rx_status*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int) ; 

__attribute__((used)) static void
FUNC9(struct brcms_c_info *wlc, struct d11rxhdr *rxh,
		struct sk_buff *p)
{
	int len_mpdu;
	struct ieee80211_rx_status rx_status;
	struct ieee80211_hdr *hdr;

	FUNC6(&rx_status, 0, sizeof(rx_status));
	FUNC7(wlc, rxh, p, &rx_status);

	/* mac header+body length, exclude CRC and plcp header */
	len_mpdu = p->len - D11_PHY_HDR_LEN - FCS_LEN;
	FUNC8(p, D11_PHY_HDR_LEN);
	FUNC1(p, len_mpdu);

	/* unmute transmit */
	if (wlc->hw->suspended_fifos) {
		hdr = (struct ieee80211_hdr *)p->data;
		if (FUNC3(hdr->frame_control))
			FUNC2(wlc->hw, false);
	}

	FUNC5(FUNC0(p), &rx_status, sizeof(rx_status));
	FUNC4(wlc->pub->ieee_hw, p);
}