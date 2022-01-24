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
struct usb_interface {int dummy; } ;
struct catc {int /*<<< orphan*/  netdev; int /*<<< orphan*/  irq_urb; int /*<<< orphan*/  rx_urb; int /*<<< orphan*/  tx_urb; int /*<<< orphan*/  ctrl_urb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct catc* FUNC3 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct usb_interface *intf)
{
	struct catc *catc = FUNC3(intf);

	FUNC4(intf, NULL);
	if (catc) {
		FUNC1(catc->netdev);
		FUNC2(catc->ctrl_urb);
		FUNC2(catc->tx_urb);
		FUNC2(catc->rx_urb);
		FUNC2(catc->irq_urb);
		FUNC0(catc->netdev);
	}
}