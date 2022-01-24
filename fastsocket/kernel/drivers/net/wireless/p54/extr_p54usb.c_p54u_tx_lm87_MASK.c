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
struct urb {int /*<<< orphan*/  transfer_flags; } ;
struct sk_buff {scalar_t__ len; scalar_t__ data; } ;
struct p54u_priv {int /*<<< orphan*/  submitted; int /*<<< orphan*/  udev; } ;
struct p54_hdr {int /*<<< orphan*/  req_id; } ;
struct lm87_tx_hdr {int /*<<< orphan*/  device_addr; int /*<<< orphan*/  chksum; } ;
struct ieee80211_hw {struct p54u_priv* priv; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  P54U_PIPE_DATA ; 
 int /*<<< orphan*/  URB_ZERO_PACKET ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  p54u_tx_cb ; 
 int /*<<< orphan*/  p54u_tx_dummy_cb ; 
 struct urb* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct urb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct urb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct lm87_tx_hdr*,scalar_t__,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct urb*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct urb*) ; 

__attribute__((used)) static void FUNC10(struct ieee80211_hw *dev, struct sk_buff *skb)
{
	struct p54u_priv *priv = dev->priv;
	struct urb *data_urb;
	struct lm87_tx_hdr *hdr = (void *)skb->data - sizeof(*hdr);

	data_urb = FUNC3(0, GFP_ATOMIC);
	if (!data_urb) {
		FUNC1(dev, skb);
		return;
	}

	hdr->chksum = FUNC2((__le32 *)skb->data, skb->len);
	hdr->device_addr = ((struct p54_hdr *)skb->data)->req_id;

	FUNC5(data_urb, priv->udev,
			  FUNC7(priv->udev, P54U_PIPE_DATA),
			  hdr, skb->len + sizeof(*hdr),  FUNC0(skb) ?
			  p54u_tx_cb : p54u_tx_dummy_cb, skb);
	data_urb->transfer_flags |= URB_ZERO_PACKET;

	FUNC4(data_urb, &priv->submitted);
	if (FUNC8(data_urb, GFP_ATOMIC)) {
		FUNC9(data_urb);
		FUNC1(dev, skb);
	}
	FUNC6(data_urb);
}