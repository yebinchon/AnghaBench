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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int dummy; } ;
struct il_rx_buf {int /*<<< orphan*/ * page; } ;
struct il_priv {int /*<<< orphan*/  alloc_rxb_page; int /*<<< orphan*/  hw; TYPE_2__* cfg; int /*<<< orphan*/  is_open; } ;
struct ieee80211_rx_status {int dummy; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_4__ {TYPE_1__* mod_params; } ;
struct TYPE_3__ {int /*<<< orphan*/  sw_crypto; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct sk_buff* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 scalar_t__ FUNC5 (struct il_priv*,struct ieee80211_hdr*,int /*<<< orphan*/ ,struct ieee80211_rx_status*) ; 
 int /*<<< orphan*/  FUNC6 (struct il_priv*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct ieee80211_rx_status*,int) ; 
 int FUNC8 (struct il_rx_buf*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static void
FUNC11(struct il_priv *il, struct ieee80211_hdr *hdr,
			       u16 len, u32 ampdu_status, struct il_rx_buf *rxb,
			       struct ieee80211_rx_status *stats)
{
	struct sk_buff *skb;
	__le16 fc = hdr->frame_control;

	/* We only process data packets if the interface is open */
	if (FUNC10(!il->is_open)) {
		FUNC0("Dropping packet while interface is not open.\n");
		return;
	}

	/* In case of HW accelerated crypto and bad decryption, drop */
	if (!il->cfg->mod_params->sw_crypto &&
	    FUNC5(il, hdr, ampdu_status, stats))
		return;

	skb = FUNC3(128);
	if (!skb) {
		FUNC2("dev_alloc_skb failed\n");
		return;
	}

	FUNC9(skb, 0, rxb->page, (void *)hdr - FUNC8(rxb), len,
			len);

	FUNC6(il, false, fc, len);
	FUNC7(FUNC1(skb), stats, sizeof(*stats));

	FUNC4(il->hw, skb);
	il->alloc_rxb_page--;
	rxb->page = NULL;
}