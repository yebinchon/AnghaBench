#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  data; } ;
struct TYPE_9__ {int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  tx_errors; } ;
struct net_device {int /*<<< orphan*/  trans_start; TYPE_3__ stats; } ;
struct hso_net {TYPE_6__* parent; TYPE_4__* mux_bulk_tx_urb; int /*<<< orphan*/  mux_bulk_tx_buf; TYPE_1__* out_endp; struct sk_buff* skb_tx_buf; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
struct TYPE_11__ {TYPE_2__* interface; int /*<<< orphan*/  usb; } ;
struct TYPE_10__ {int /*<<< orphan*/  transfer_flags; } ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {int bEndpointAddress; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  MUX_BULK_TX_BUF_SIZE ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  URB_ZERO_PACKET ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 struct hso_net* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,struct hso_net*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int FUNC11 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  write_bulk_callback ; 

__attribute__((used)) static netdev_tx_t FUNC12(struct sk_buff *skb,
					    struct net_device *net)
{
	struct hso_net *odev = FUNC6(net);
	int result;

	/* Tell the kernel, "No more frames 'til we are done with this one." */
	FUNC8(net);
	if (FUNC4(odev->parent) == -EAGAIN) {
		odev->skb_tx_buf = skb;
		return NETDEV_TX_OK;
	}

	/* log if asked */
	FUNC1(skb->data, skb->len);
	/* Copy it from kernel memory to OUR memory */
	FUNC5(odev->mux_bulk_tx_buf, skb->data, skb->len);
	FUNC0("len: %d/%d", skb->len, MUX_BULK_TX_BUF_SIZE);

	/* Fill in the URB for shipping it out. */
	FUNC9(odev->mux_bulk_tx_urb,
			  odev->parent->usb,
			  FUNC10(odev->parent->usb,
					  odev->out_endp->
					  bEndpointAddress & 0x7F),
			  odev->mux_bulk_tx_buf, skb->len, write_bulk_callback,
			  odev);

	/* Deal with the Zero Length packet problem, I hope */
	odev->mux_bulk_tx_urb->transfer_flags |= URB_ZERO_PACKET;

	/* Send the URB on its merry way. */
	result = FUNC11(odev->mux_bulk_tx_urb, GFP_ATOMIC);
	if (result) {
		FUNC3(&odev->parent->interface->dev,
			"failed mux_bulk_tx_urb %d", result);
		net->stats.tx_errors++;
		FUNC7(net);
	} else {
		net->stats.tx_packets++;
		net->stats.tx_bytes += skb->len;
		/* And tell the kernel when the last transmit started. */
		net->trans_start = jiffies;
	}
	FUNC2(skb);
	/* we're done */
	return NETDEV_TX_OK;
}