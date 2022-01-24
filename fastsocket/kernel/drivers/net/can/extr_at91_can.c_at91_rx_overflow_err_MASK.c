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
struct sk_buff {int dummy; } ;
struct net_device_stats {int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_errors; int /*<<< orphan*/  rx_over_errors; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct net_device {TYPE_1__ dev; struct net_device_stats stats; } ;
struct can_frame {scalar_t__ can_dlc; int /*<<< orphan*/ * data; int /*<<< orphan*/  can_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAN_ERR_CRTL ; 
 int /*<<< orphan*/  CAN_ERR_CRTL_RX_OVERFLOW ; 
 struct sk_buff* FUNC0 (struct net_device*,struct can_frame**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev)
{
	struct net_device_stats *stats = &dev->stats;
	struct sk_buff *skb;
	struct can_frame *cf;

	FUNC1(dev->dev.parent, "RX buffer overflow\n");
	stats->rx_over_errors++;
	stats->rx_errors++;

	skb = FUNC0(dev, &cf);
	if (FUNC3(!skb))
		return;

	cf->can_id |= CAN_ERR_CRTL;
	cf->data[1] = CAN_ERR_CRTL_RX_OVERFLOW;
	FUNC2(skb);

	stats->rx_packets++;
	stats->rx_bytes += cf->can_dlc;
}