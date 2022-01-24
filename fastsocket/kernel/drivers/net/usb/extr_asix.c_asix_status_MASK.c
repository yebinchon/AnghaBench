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
struct usbnet {int /*<<< orphan*/  net; } ;
struct urb {int actual_length; struct ax88172_int_data* transfer_buffer; } ;
struct ax88172_int_data {int link; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_LINK_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct usbnet*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct usbnet*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct usbnet *dev, struct urb *urb)
{
	struct ax88172_int_data *event;
	int link;

	if (urb->actual_length < 8)
		return;

	event = urb->transfer_buffer;
	link = event->link & 0x01;
	if (FUNC2(dev->net) != link) {
		if (link) {
			FUNC3(dev->net);
			FUNC4 (dev, EVENT_LINK_RESET );
		} else
			FUNC1(dev->net);
		FUNC0(dev, "Link Status is: %d", link);
	}
}