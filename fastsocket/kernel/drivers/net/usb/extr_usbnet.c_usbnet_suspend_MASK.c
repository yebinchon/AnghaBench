#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  lock; scalar_t__ qlen; } ;
struct usbnet {int /*<<< orphan*/  net; TYPE_1__ txq; int /*<<< orphan*/  flags; int /*<<< orphan*/  suspend_count; } ;
struct usb_interface {int dummy; } ;
struct TYPE_5__ {int event; } ;
typedef  TYPE_2__ pm_message_t ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  EVENT_DEV_ASLEEP ; 
 int PM_EVENT_AUTO ; 
 int /*<<< orphan*/  FUNC0 (struct usbnet*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct usbnet* FUNC6 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC7 (struct usbnet*) ; 

int FUNC8 (struct usb_interface *intf, pm_message_t message)
{
	struct usbnet		*dev = FUNC6(intf);

	if (!dev->suspend_count++) {
		FUNC4(&dev->txq.lock);
		/* don't autosuspend while transmitting */
		if (dev->txq.qlen && (message.event & PM_EVENT_AUTO)) {
			FUNC5(&dev->txq.lock);
			return -EBUSY;
		} else {
			FUNC3(EVENT_DEV_ASLEEP, &dev->flags);
			FUNC5(&dev->txq.lock);
		}
		/*
		 * accelerate emptying of the rx and queues, to avoid
		 * having everything error out.
		 */
		FUNC2 (dev->net);
		FUNC7(dev);
		FUNC0(dev);

		/*
		 * reattach so runtime management can use and
		 * wake the device
		 */
		FUNC1 (dev->net);
	}
	return 0;
}