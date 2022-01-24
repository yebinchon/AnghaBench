#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ qlen; int /*<<< orphan*/  lock; } ;
struct usbnet {int /*<<< orphan*/  flags; int /*<<< orphan*/  bh; TYPE_1__* net; TYPE_3__ txq; int /*<<< orphan*/  delay; int /*<<< orphan*/  wait; int /*<<< orphan*/  intf; int /*<<< orphan*/  deferred; int /*<<< orphan*/  suspend_count; } ;
struct usb_interface {int dummy; } ;
struct urb {scalar_t__ context; } ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  trans_start; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_DEVICE_REPORT_IDLE ; 
 int /*<<< orphan*/  EVENT_DEV_ASLEEP ; 
 int /*<<< orphan*/  EVENT_DEV_OPEN ; 
 int /*<<< orphan*/  EVENT_RX_HALT ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 scalar_t__ FUNC0 (struct usbnet*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct usbnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  jiffies ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (struct usbnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct urb*) ; 
 struct urb* FUNC16 (int /*<<< orphan*/ *) ; 
 struct usbnet* FUNC17 (struct usb_interface*) ; 
 int FUNC18 (struct urb*,int /*<<< orphan*/ ) ; 

int FUNC19 (struct usb_interface *intf)
{
	struct usbnet		*dev = FUNC17(intf);
	struct sk_buff          *skb;
	struct urb              *res;
	int                     retval;

	if (!--dev->suspend_count) {
		/* resume interrupt URB if it was previously submitted */
		FUNC2(dev, GFP_NOIO);

		FUNC9(&dev->txq.lock);
		while ((res = FUNC16(&dev->deferred))) {

			skb = (struct sk_buff *)res->context;
			retval = FUNC18(res, GFP_ATOMIC);
			if (retval < 0) {
				FUNC4(skb);
				FUNC15(res);
				FUNC14(dev->intf);
			} else {
				dev->net->trans_start = jiffies;
				FUNC1(&dev->txq, skb);
			}
		}

		FUNC8();
		FUNC3(EVENT_DEV_ASLEEP, &dev->flags);
		FUNC10(&dev->txq.lock);

		if (FUNC12(EVENT_DEV_OPEN, &dev->flags)) {
			/* handle remote wakeup ASAP */
			if (!dev->wait &&
				FUNC5(dev->net) &&
				!FUNC13(&dev->delay) &&
				!FUNC12(EVENT_RX_HALT, &dev->flags))
					FUNC7(dev, GFP_NOIO);

			if (!(dev->txq.qlen >= FUNC0(dev)))
				FUNC6(dev->net);
			FUNC11 (&dev->bh);
		}
	}

	FUNC3(EVENT_DEVICE_REPORT_IDLE, &dev->flags);

	return 0;
}