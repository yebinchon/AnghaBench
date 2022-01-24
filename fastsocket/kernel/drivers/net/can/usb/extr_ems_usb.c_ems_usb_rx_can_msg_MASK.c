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
struct sk_buff {int /*<<< orphan*/  protocol; } ;
struct net_device_stats {int rx_bytes; int /*<<< orphan*/  rx_packets; } ;
struct ems_usb {TYPE_3__* netdev; } ;
struct TYPE_4__ {int /*<<< orphan*/ * msg; int /*<<< orphan*/  length; int /*<<< orphan*/  id; } ;
struct TYPE_5__ {TYPE_1__ can_msg; } ;
struct ems_cpc_msg {scalar_t__ type; TYPE_2__ msg; } ;
struct can_frame {int can_dlc; int /*<<< orphan*/ * data; int /*<<< orphan*/  can_id; } ;
struct TYPE_6__ {struct net_device_stats stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAN_EFF_FLAG ; 
 int /*<<< orphan*/  CAN_RTR_FLAG ; 
 scalar_t__ CPC_MSG_TYPE_EXT_CAN_FRAME ; 
 scalar_t__ CPC_MSG_TYPE_EXT_RTR_FRAME ; 
 scalar_t__ CPC_MSG_TYPE_RTR_FRAME ; 
 int /*<<< orphan*/  ETH_P_CAN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct sk_buff* FUNC3 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  u8 ; 

__attribute__((used)) static void FUNC6(struct ems_usb *dev, struct ems_cpc_msg *msg)
{
	struct can_frame *cf;
	struct sk_buff *skb;
	int i;
	struct net_device_stats *stats = &dev->netdev->stats;

	skb = FUNC3(dev->netdev, sizeof(struct can_frame));
	if (skb == NULL)
		return;

	skb->protocol = FUNC0(ETH_P_CAN);

	cf = (struct can_frame *)FUNC5(skb, sizeof(struct can_frame));

	cf->can_id = FUNC1(msg->msg.can_msg.id);
	cf->can_dlc = FUNC2(u8, msg->msg.can_msg.length, 8);

	if (msg->type == CPC_MSG_TYPE_EXT_CAN_FRAME
	    || msg->type == CPC_MSG_TYPE_EXT_RTR_FRAME)
		cf->can_id |= CAN_EFF_FLAG;

	if (msg->type == CPC_MSG_TYPE_RTR_FRAME
	    || msg->type == CPC_MSG_TYPE_EXT_RTR_FRAME) {
		cf->can_id |= CAN_RTR_FLAG;
	} else {
		for (i = 0; i < cf->can_dlc; i++)
			cf->data[i] = msg->msg.can_msg.msg[i];
	}

	FUNC4(skb);

	stats->rx_packets++;
	stats->rx_bytes += cf->can_dlc;
}