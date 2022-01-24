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
struct usbnet {int /*<<< orphan*/  done; TYPE_3__* net; TYPE_2__* driver_info; } ;
struct sk_buff {scalar_t__ len; } ;
struct TYPE_4__ {int /*<<< orphan*/  rx_errors; } ;
struct TYPE_6__ {TYPE_1__ stats; } ;
struct TYPE_5__ {int flags; int /*<<< orphan*/  (* rx_fixup ) (struct usbnet*,struct sk_buff*) ;} ;

/* Variables and functions */
 int FLAG_MULTI_PACKET ; 
 int FLAG_RX_ASSEMBLE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct usbnet*,int /*<<< orphan*/ ,TYPE_3__*,char*) ; 
 int /*<<< orphan*/  rx_err ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct usbnet*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct usbnet*,struct sk_buff*) ; 

__attribute__((used)) static inline void FUNC5 (struct usbnet *dev, struct sk_buff *skb)
{
	if (dev->driver_info->rx_fixup &&
	    !dev->driver_info->rx_fixup (dev, skb)) {
		/* With RX_ASSEMBLE, rx_fixup() must update counters */
		if (!(dev->driver_info->flags & FLAG_RX_ASSEMBLE))
			dev->net->stats.rx_errors++;
		goto done;
	}
	// else network stack removes extra byte if we forced a short packet

	if (skb->len) {
		/* all data was already cloned from skb inside the driver */
		if (dev->driver_info->flags & FLAG_MULTI_PACKET)
			FUNC0(skb);
		else
			FUNC4(dev, skb);
		return;
	}

	FUNC1(dev, rx_err, dev->net, "drop\n");
	dev->net->stats.rx_errors++;
done:
	FUNC2(&dev->done, skb);
}