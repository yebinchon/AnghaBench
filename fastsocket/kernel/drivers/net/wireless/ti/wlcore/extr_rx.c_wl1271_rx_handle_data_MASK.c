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
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct wl1271_rx_descriptor {scalar_t__ packet_class; int status; int hlid; scalar_t__ pad_len; } ;
struct wl1271 {int /*<<< orphan*/  netstack_work; int /*<<< orphan*/  freezable_wq; int /*<<< orphan*/  deferred_rx_queue; int /*<<< orphan*/  fwlog_waitq; int /*<<< orphan*/  plt; } ;
struct sk_buff {scalar_t__ len; scalar_t__ data; } ;
struct ieee80211_hdr {int /*<<< orphan*/  seq_ctrl; int /*<<< orphan*/  frame_control; } ;
typedef  enum wl_rx_buf_align { ____Placeholder_wl_rx_buf_align } wl_rx_buf_align ;

/* Variables and functions */
 int DEBUG_CMD ; 
 int DEBUG_RX ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IEEE80211_SCTL_SEQ ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int RX_BUF_ALIGN ; 
 int WL1271_RX_DESC_DECRYPT_FAIL ; 
 int WL1271_RX_DESC_STATUS_MASK ; 
 scalar_t__ WL12XX_RX_CLASS_LOGGER ; 
 int WLCORE_RX_BUF_PADDED ; 
 int WLCORE_RX_BUF_UNALIGNED ; 
 struct sk_buff* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int) ; 
 int* FUNC10 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int,char*,struct sk_buff*,scalar_t__,char*,int,int) ; 
 int /*<<< orphan*/  FUNC16 (int,char*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*,...) ; 
 int /*<<< orphan*/  FUNC18 (struct wl1271*,struct wl1271_rx_descriptor*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC20 (struct wl1271*,int*,size_t) ; 
 int FUNC21 (struct wl1271*,int*,int) ; 
 int /*<<< orphan*/  FUNC22 (struct wl1271*,struct wl1271_rx_descriptor*,struct sk_buff*) ; 

__attribute__((used)) static int FUNC23(struct wl1271 *wl, u8 *data, u32 length,
				 enum wl_rx_buf_align rx_align, u8 *hlid)
{
	struct wl1271_rx_descriptor *desc;
	struct sk_buff *skb;
	struct ieee80211_hdr *hdr;
	u8 *buf;
	u8 beacon = 0;
	u8 is_data = 0;
	u8 reserved = 0, offset_to_data = 0;
	u16 seq_num;
	u32 pkt_data_len;

	/*
	 * In PLT mode we seem to get frames and mac80211 warns about them,
	 * workaround this by not retrieving them at all.
	 */
	if (FUNC13(wl->plt))
		return -EINVAL;

	pkt_data_len = FUNC21(wl, data, length);
	if (!pkt_data_len) {
		FUNC17("Invalid packet arrived from HW. length %d",
			     length);
		return -EINVAL;
	}

	if (rx_align == WLCORE_RX_BUF_UNALIGNED)
		reserved = RX_BUF_ALIGN;
	else if (rx_align == WLCORE_RX_BUF_PADDED)
		offset_to_data = RX_BUF_ALIGN;

	/* the data read starts with the descriptor */
	desc = (struct wl1271_rx_descriptor *) data;

	if (desc->packet_class == WL12XX_RX_CLASS_LOGGER) {
		size_t len = length - sizeof(*desc);
		FUNC20(wl, data + sizeof(*desc), len);
		FUNC14(&wl->fwlog_waitq);
		return 0;
	}

	/* discard corrupted packets */
	if (desc->status & WL1271_RX_DESC_DECRYPT_FAIL) {
		hdr = (void *)(data + sizeof(*desc) + offset_to_data);
		FUNC19("corrupted packet in RX: status: 0x%x len: %d",
			       desc->status & WL1271_RX_DESC_STATUS_MASK,
			       pkt_data_len);
		FUNC16((DEBUG_RX|DEBUG_CMD), "PKT: ", data + sizeof(*desc),
			    FUNC7(pkt_data_len,
				FUNC2(hdr->frame_control)));
		return -EINVAL;
	}

	/* skb length not including rx descriptor */
	skb = FUNC1(pkt_data_len + reserved, GFP_KERNEL);
	if (!skb) {
		FUNC17("Couldn't allocate RX frame");
		return -ENOMEM;
	}

	/* reserve the unaligned payload(if any) */
	FUNC12(skb, reserved);

	buf = FUNC10(skb, pkt_data_len);

	/*
	 * Copy packets from aggregation buffer to the skbs without rx
	 * descriptor and with packet payload aligned care. In case of unaligned
	 * packets copy the packets in offset of 2 bytes guarantee IP header
	 * payload aligned to 4 bytes.
	 */
	FUNC6(buf, data + sizeof(*desc), pkt_data_len);
	if (rx_align == WLCORE_RX_BUF_PADDED)
		FUNC9(skb, RX_BUF_ALIGN);

	*hlid = desc->hlid;

	hdr = (struct ieee80211_hdr *)skb->data;
	if (FUNC3(hdr->frame_control))
		beacon = 1;
	if (FUNC4(hdr->frame_control))
		is_data = 1;

	FUNC18(wl, desc, FUNC0(skb), beacon);
	FUNC22(wl, desc, skb);

	seq_num = (FUNC5(hdr->seq_ctrl) & IEEE80211_SCTL_SEQ) >> 4;
	FUNC15(DEBUG_RX, "rx skb 0x%p: %d B %s seq %d hlid %d", skb,
		     skb->len - desc->pad_len,
		     beacon ? "beacon" : "",
		     seq_num, *hlid);

	FUNC11(&wl->deferred_rx_queue, skb);
	FUNC8(wl->freezable_wq, &wl->netstack_work);

	return is_data;
}