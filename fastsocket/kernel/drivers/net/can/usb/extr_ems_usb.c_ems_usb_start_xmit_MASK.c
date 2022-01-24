#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct urb {int /*<<< orphan*/  transfer_dma; int /*<<< orphan*/  transfer_flags; } ;
struct sk_buff {scalar_t__ data; } ;
struct net_device_stats {int /*<<< orphan*/  tx_dropped; } ;
struct TYPE_6__ {int /*<<< orphan*/  parent; } ;
struct net_device {int /*<<< orphan*/  trans_start; TYPE_3__ dev; struct net_device_stats stats; } ;
struct ems_usb {int free_slots; int /*<<< orphan*/  active_tx_urbs; int /*<<< orphan*/  udev; int /*<<< orphan*/  tx_submitted; struct ems_tx_urb_context* tx_contexts; } ;
struct ems_tx_urb_context {int echo_index; int dlc; struct ems_usb* dev; } ;
struct TYPE_4__ {int id; int length; int /*<<< orphan*/ * msg; } ;
struct TYPE_5__ {TYPE_1__ can_msg; } ;
struct ems_cpc_msg {TYPE_2__ msg; void* length; int /*<<< orphan*/  type; } ;
struct cpc_can_msg {int dummy; } ;
struct can_frame {int can_id; int can_dlc; int /*<<< orphan*/ * data; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 int CAN_EFF_FLAG ; 
 int CAN_ERR_MASK ; 
 int CAN_RTR_FLAG ; 
 void* CPC_CAN_MSG_MIN_SIZE ; 
 int /*<<< orphan*/  CPC_CMD_TYPE_CAN_FRAME ; 
 int /*<<< orphan*/  CPC_CMD_TYPE_EXT_CAN_FRAME ; 
 int /*<<< orphan*/  CPC_CMD_TYPE_EXT_RTR_FRAME ; 
 int /*<<< orphan*/  CPC_CMD_TYPE_RTR_FRAME ; 
 int CPC_HEADER_SIZE ; 
 int CPC_MSG_HEADER_LEN ; 
 int ENODEV ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int MAX_TX_URBS ; 
 int /*<<< orphan*/  NETDEV_TX_BUSY ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  URB_NO_TRANSFER_DMA_MAP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct net_device*,int) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  ems_usb_write_bulk_callback ; 
 int /*<<< orphan*/  jiffies ; 
 struct ems_usb* FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 scalar_t__ FUNC12 (int) ; 
 struct urb* FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct urb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct urb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,struct ems_tx_urb_context*) ; 
 int /*<<< orphan*/  FUNC18 (struct urb*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int) ; 
 int FUNC20 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct urb*) ; 

__attribute__((used)) static netdev_tx_t FUNC22(struct sk_buff *skb, struct net_device *netdev)
{
	struct ems_usb *dev = FUNC9(netdev);
	struct ems_tx_urb_context *context = NULL;
	struct net_device_stats *stats = &netdev->stats;
	struct can_frame *cf = (struct can_frame *)skb->data;
	struct ems_cpc_msg *msg;
	struct urb *urb;
	u8 *buf;
	int i, err;
	size_t size = CPC_HEADER_SIZE + CPC_MSG_HEADER_LEN
			+ sizeof(struct cpc_can_msg);

	/* create a URB, and a buffer for it, and copy the data to the URB */
	urb = FUNC13(0, GFP_ATOMIC);
	if (!urb) {
		FUNC6(netdev->dev.parent, "No memory left for URBs\n");
		goto nomem;
	}

	buf = FUNC15(dev->udev, size, GFP_ATOMIC, &urb->transfer_dma);
	if (!buf) {
		FUNC6(netdev->dev.parent, "No memory left for USB buffer\n");
		FUNC18(urb);
		goto nomem;
	}

	msg = (struct ems_cpc_msg *)&buf[CPC_HEADER_SIZE];

	msg->msg.can_msg.id = cf->can_id & CAN_ERR_MASK;
	msg->msg.can_msg.length = cf->can_dlc;

	if (cf->can_id & CAN_RTR_FLAG) {
		msg->type = cf->can_id & CAN_EFF_FLAG ?
			CPC_CMD_TYPE_EXT_RTR_FRAME : CPC_CMD_TYPE_RTR_FRAME;

		msg->length = CPC_CAN_MSG_MIN_SIZE;
	} else {
		msg->type = cf->can_id & CAN_EFF_FLAG ?
			CPC_CMD_TYPE_EXT_CAN_FRAME : CPC_CMD_TYPE_CAN_FRAME;

		for (i = 0; i < cf->can_dlc; i++)
			msg->msg.can_msg.msg[i] = cf->data[i];

		msg->length = CPC_CAN_MSG_MIN_SIZE + cf->can_dlc;
	}

	/* Respect byte order */
	msg->msg.can_msg.id = FUNC5(msg->msg.can_msg.id);

	for (i = 0; i < MAX_TX_URBS; i++) {
		if (dev->tx_contexts[i].echo_index == MAX_TX_URBS) {
			context = &dev->tx_contexts[i];
			break;
		}
	}

	/*
	 * May never happen! When this happens we'd more URBs in flight as
	 * allowed (MAX_TX_URBS).
	 */
	if (!context) {
		FUNC21(urb);
		FUNC16(dev->udev, size, buf, urb->transfer_dma);

		FUNC8(netdev->dev.parent, "couldn't find free context\n");

		return NETDEV_TX_BUSY;
	}

	context->dev = dev;
	context->echo_index = i;
	context->dlc = cf->can_dlc;

	FUNC17(urb, dev->udev, FUNC19(dev->udev, 2), buf,
			  size, ems_usb_write_bulk_callback, context);
	urb->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;
	FUNC14(urb, &dev->tx_submitted);

	FUNC4(skb, netdev, context->echo_index);

	FUNC1(&dev->active_tx_urbs);

	err = FUNC20(urb, GFP_ATOMIC);
	if (FUNC12(err)) {
		FUNC3(netdev, context->echo_index);

		FUNC21(urb);
		FUNC16(dev->udev, size, buf, urb->transfer_dma);
		FUNC7(skb);

		FUNC0(&dev->active_tx_urbs);

		if (err == -ENODEV) {
			FUNC10(netdev);
		} else {
			FUNC8(netdev->dev.parent, "failed tx_urb %d\n", err);

			stats->tx_dropped++;
		}
	} else {
		netdev->trans_start = jiffies;

		/* Slow down tx path */
		if (FUNC2(&dev->active_tx_urbs) >= MAX_TX_URBS ||
		    dev->free_slots < 5) {
			FUNC11(netdev);
		}
	}

	/*
	 * Release our reference to this URB, the USB core will eventually free
	 * it entirely.
	 */
	FUNC18(urb);

	return NETDEV_TX_OK;

nomem:
	if (skb)
		FUNC7(skb);

	stats->tx_dropped++;

	return NETDEV_TX_OK;
}