#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct usb_interface {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  netdev; int /*<<< orphan*/  intr_buff; scalar_t__ rx_skb; int /*<<< orphan*/  tl; int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ rtl8150_t ;

/* Variables and functions */
 int /*<<< orphan*/  RTL8150_UNPLUG ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC10 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC11 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(struct usb_interface *intf)
{
	rtl8150_t *dev = FUNC10(intf);

	FUNC11(intf, NULL);
	if (dev) {
		FUNC5(RTL8150_UNPLUG, &dev->flags);
		FUNC6(&dev->tl);
		FUNC7(&dev->tl);
		FUNC9(dev->netdev);
		FUNC8(dev);
		FUNC1(dev);
		FUNC3(dev);
		if (dev->rx_skb)
			FUNC0(dev->rx_skb);
		FUNC4(dev->intr_buff);
		FUNC2(dev->netdev);
	}
}