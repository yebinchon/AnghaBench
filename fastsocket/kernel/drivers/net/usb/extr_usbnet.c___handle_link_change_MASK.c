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
struct usbnet {int /*<<< orphan*/  flags; int /*<<< orphan*/  bh; int /*<<< orphan*/  rxq; int /*<<< orphan*/  net; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_DEV_OPEN ; 
 int /*<<< orphan*/  EVENT_LINK_CHANGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct usbnet*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct usbnet *dev)
{
	if (!FUNC3(EVENT_DEV_OPEN, &dev->flags))
		return;

	if (!FUNC1(dev->net)) {
		/* kill URBs for reading packets to save bus bandwidth */
		FUNC4(dev, &dev->rxq);

		/*
		 * tx_timeout will unlink URBs for sending packets and
		 * tx queue is stopped by netcore after link becomes off
		 */
	} else {
		/* submitting URBs for reading packets */
		FUNC2(&dev->bh);
	}

	FUNC0(EVENT_LINK_CHANGE, &dev->flags);
}