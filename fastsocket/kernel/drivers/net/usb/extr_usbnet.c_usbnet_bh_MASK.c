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
struct TYPE_5__ {scalar_t__ qlen; } ;
struct TYPE_4__ {int qlen; } ;
struct TYPE_6__ {scalar_t__ qlen; } ;
struct usbnet {int /*<<< orphan*/  net; TYPE_2__ txq; int /*<<< orphan*/  bh; TYPE_1__ rxq; int /*<<< orphan*/  flags; int /*<<< orphan*/  delay; scalar_t__ wait; TYPE_3__ done; } ;
struct skb_data {int state; int /*<<< orphan*/  urb; } ;
struct sk_buff {scalar_t__ cb; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOLINK ; 
 int /*<<< orphan*/  EVENT_RX_HALT ; 
 int /*<<< orphan*/  EVENT_RX_KILL ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int FUNC0 (struct usbnet*) ; 
 scalar_t__ FUNC1 (struct usbnet*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct usbnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct usbnet*,int /*<<< orphan*/ ) ; 
#define  rx_cleanup 130 
#define  rx_done 129 
 int /*<<< orphan*/  FUNC11 (struct usbnet*,struct sk_buff*) ; 
 struct sk_buff* FUNC12 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
#define  tx_done 128 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__) ; 

__attribute__((used)) static void FUNC18 (unsigned long param)
{
	struct usbnet		*dev = (struct usbnet *) param;
	struct sk_buff		*skb;
	struct skb_data		*entry;

	while ((skb = FUNC12 (&dev->done))) {
		entry = (struct skb_data *) skb->cb;
		switch (entry->state) {
		case rx_done:
			entry->state = rx_cleanup;
			FUNC11 (dev, skb);
			continue;
		case tx_done:
		case rx_cleanup:
			FUNC16 (entry->urb);
			FUNC3 (skb);
			continue;
		default:
			FUNC4(dev->net, "bogus skb state %d\n", entry->state);
		}
	}

	/* restart RX again after disabling due to high error rate */
	FUNC2(EVENT_RX_KILL, &dev->flags);

	// waiting for all pending urbs to complete?
	if (dev->wait) {
		if ((dev->txq.qlen + dev->rxq.qlen + dev->done.qlen) == 0) {
			FUNC17 (dev->wait);
		}

	// or are we maybe short a few urbs?
	} else if (FUNC8 (dev->net) &&
		   FUNC7 (dev->net) &&
		   FUNC5(dev->net) &&
		   !FUNC15 (&dev->delay) &&
		   !FUNC14 (EVENT_RX_HALT, &dev->flags)) {
		int	temp = dev->rxq.qlen;

		if (temp < FUNC0(dev)) {
			if (FUNC10(dev, GFP_ATOMIC) == -ENOLINK)
				return;
			if (temp != dev->rxq.qlen)
				FUNC6(dev, link, dev->net,
					  "rxqlen %d --> %d\n",
					  temp, dev->rxq.qlen);
			if (dev->rxq.qlen < FUNC0(dev))
				FUNC13 (&dev->bh);
		}
		if (dev->txq.qlen < FUNC1 (dev))
			FUNC9 (dev->net);
	}
}