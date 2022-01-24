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
typedef  scalar_t__ u16 ;
struct sk_buff {int dummy; } ;
struct il_rx_pkt {int dummy; } ;
struct il_rx_buf {int /*<<< orphan*/ * page; } ;
struct TYPE_3__ {int rx_page_order; } ;
struct il_priv {int /*<<< orphan*/  alloc_rxb_page; int /*<<< orphan*/  hw; int /*<<< orphan*/  is_open; TYPE_1__ hw_params; } ;
struct il3945_rx_frame_hdr {scalar_t__ payload; int /*<<< orphan*/  len; } ;
struct il3945_rx_frame_end {int /*<<< orphan*/  status; } ;
struct ieee80211_rx_status {int dummy; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_4__ {int /*<<< orphan*/  sw_crypto; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 scalar_t__ IL39_RX_FRAME_SIZE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (struct il_rx_pkt*) ; 
 struct il3945_rx_frame_end* FUNC4 (struct il_rx_pkt*) ; 
 struct il3945_rx_frame_hdr* FUNC5 (struct il_rx_pkt*) ; 
 scalar_t__ PAGE_SIZE ; 
 struct sk_buff* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 TYPE_2__ il3945_mod_params ; 
 int /*<<< orphan*/  FUNC8 (struct il_priv*,struct ieee80211_hdr*,int /*<<< orphan*/ ,struct ieee80211_rx_status*) ; 
 int /*<<< orphan*/  FUNC9 (struct il_priv*,int,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct ieee80211_rx_status*,int) ; 
 struct il_rx_pkt* FUNC13 (struct il_rx_buf*) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC15 (int) ; 

__attribute__((used)) static void
FUNC16(struct il_priv *il, struct il_rx_buf *rxb,
			       struct ieee80211_rx_status *stats)
{
	struct il_rx_pkt *pkt = FUNC13(rxb);
	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)FUNC3(pkt);
	struct il3945_rx_frame_hdr *rx_hdr = FUNC5(pkt);
	struct il3945_rx_frame_end *rx_end = FUNC4(pkt);
	u16 len = FUNC10(rx_hdr->len);
	struct sk_buff *skb;
	__le16 fc = hdr->frame_control;

	/* We received data from the HW, so stop the watchdog */
	if (FUNC15
	    (len + IL39_RX_FRAME_SIZE >
	     PAGE_SIZE << il->hw_params.rx_page_order)) {
		FUNC0("Corruption detected!\n");
		return;
	}

	/* We only process data packets if the interface is open */
	if (FUNC15(!il->is_open)) {
		FUNC0("Dropping packet while interface is not open.\n");
		return;
	}

	skb = FUNC6(128);
	if (!skb) {
		FUNC2("dev_alloc_skb failed\n");
		return;
	}

	if (!il3945_mod_params.sw_crypto)
		FUNC8(il, (struct ieee80211_hdr *)FUNC13(rxb),
				      FUNC11(rx_end->status), stats);

	FUNC14(skb, 0, rxb->page,
			(void *)rx_hdr->payload - (void *)pkt, len,
			len);

	FUNC9(il, false, fc, len);
	FUNC12(FUNC1(skb), stats, sizeof(*stats));

	FUNC7(il->hw, skb);
	il->alloc_rxb_page--;
	rxb->page = NULL;
}