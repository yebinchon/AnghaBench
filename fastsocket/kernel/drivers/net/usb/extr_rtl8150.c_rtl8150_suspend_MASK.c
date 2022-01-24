#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct usb_interface {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  intr_urb; int /*<<< orphan*/  rx_urb; int /*<<< orphan*/  netdev; } ;
typedef  TYPE_1__ rtl8150_t ;
typedef  int /*<<< orphan*/  pm_message_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct usb_interface *intf, pm_message_t message)
{
	rtl8150_t *dev = FUNC2(intf);

	FUNC0(dev->netdev);

	if (FUNC1(dev->netdev)) {
		FUNC3(dev->rx_urb);
		FUNC3(dev->intr_urb);
	}
	return 0;
}