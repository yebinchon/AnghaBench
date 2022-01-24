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
struct urb {int status; int actual_length; void* transfer_buffer; struct sk_buff* context; } ;
struct sk_buff {scalar_t__ cb; } ;
struct p54u_rx_info {struct ieee80211_hw* dev; struct urb* urb; } ;
struct TYPE_2__ {int tx_hdr_len; scalar_t__ fw_interface; scalar_t__ rx_mtu; } ;
struct p54u_priv {scalar_t__ hw_type; int /*<<< orphan*/  rx_queue; int /*<<< orphan*/  submitted; TYPE_1__ common; } ;
struct ieee80211_hw {struct p54u_priv* priv; } ;

/* Variables and functions */
 scalar_t__ FW_LM87 ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ P54U_NET2280 ; 
 struct sk_buff* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (struct ieee80211_hw*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 void* FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (struct urb*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct urb*) ; 

__attribute__((used)) static void FUNC15(struct urb *urb)
{
	struct sk_buff *skb = (struct sk_buff *) urb->context;
	struct p54u_rx_info *info = (struct p54u_rx_info *)skb->cb;
	struct ieee80211_hw *dev = info->dev;
	struct p54u_priv *priv = dev->priv;

	FUNC10(skb, &priv->rx_queue);

	if (FUNC11(urb->status)) {
		FUNC1(skb);
		return;
	}

	FUNC5(skb, urb->actual_length);

	if (priv->hw_type == P54U_NET2280)
		FUNC3(skb, priv->common.tx_hdr_len);
	if (priv->common.fw_interface == FW_LM87) {
		FUNC3(skb, 4);
		FUNC5(skb, 4);
	}

	if (FUNC2(dev, skb)) {
		skb = FUNC0(priv->common.rx_mtu + 32);
		if (FUNC11(!skb)) {
			/* TODO check rx queue length and refill *somewhere* */
			return;
		}

		info = (struct p54u_rx_info *) skb->cb;
		info->urb = urb;
		info->dev = dev;
		urb->transfer_buffer = FUNC8(skb);
		urb->context = skb;
	} else {
		if (priv->hw_type == P54U_NET2280)
			FUNC4(skb, priv->common.tx_hdr_len);
		if (priv->common.fw_interface == FW_LM87) {
			FUNC4(skb, 4);
			FUNC5(skb, 4);
		}
		FUNC7(skb);
		FUNC9(skb, 0);
		urb->transfer_buffer = FUNC8(skb);
	}
	FUNC6(&priv->rx_queue, skb);
	FUNC12(urb, &priv->submitted);
	if (FUNC13(urb, GFP_ATOMIC)) {
		FUNC10(skb, &priv->rx_queue);
		FUNC14(urb);
		FUNC1(skb);
	}
}