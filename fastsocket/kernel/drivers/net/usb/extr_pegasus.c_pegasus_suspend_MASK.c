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
struct pegasus {int /*<<< orphan*/  intr_urb; int /*<<< orphan*/  rx_urb; int /*<<< orphan*/  net; int /*<<< orphan*/  carrier_check; } ;
typedef  int /*<<< orphan*/  pm_message_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct pegasus* FUNC3 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5 (struct usb_interface *intf, pm_message_t message)
{
	struct pegasus *pegasus = FUNC3(intf);
	
	FUNC1 (pegasus->net);
	FUNC0(&pegasus->carrier_check);
	if (FUNC2(pegasus->net)) {
		FUNC4(pegasus->rx_urb);
		FUNC4(pegasus->intr_urb);
	}
	return 0;
}