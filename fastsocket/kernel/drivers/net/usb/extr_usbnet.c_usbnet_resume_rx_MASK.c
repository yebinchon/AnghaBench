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
struct usbnet {int /*<<< orphan*/  net; int /*<<< orphan*/  bh; int /*<<< orphan*/  rxq_pause; int /*<<< orphan*/  flags; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_RX_PAUSED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct usbnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  rx_status ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct usbnet*,struct sk_buff*) ; 

void FUNC5(struct usbnet *dev)
{
	struct sk_buff *skb;
	int num = 0;

	FUNC0(EVENT_RX_PAUSED, &dev->flags);

	while ((skb = FUNC2(&dev->rxq_pause)) != NULL) {
		FUNC4(dev, skb);
		num++;
	}

	FUNC3(&dev->bh);

	FUNC1(dev, rx_status, dev->net,
		  "paused rx queue disabled, %d skbs requeued\n", num);
}