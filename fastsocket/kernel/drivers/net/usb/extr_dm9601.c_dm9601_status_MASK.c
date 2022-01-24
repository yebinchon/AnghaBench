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
typedef  int u8 ;
struct usbnet {int /*<<< orphan*/  net; } ;
struct urb {int actual_length; int* transfer_buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_LINK_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct usbnet*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct usbnet*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct usbnet *dev, struct urb *urb)
{
	int link;
	u8 *buf;

	/* format:
	   b0: net status
	   b1: tx status 1
	   b2: tx status 2
	   b3: rx status
	   b4: rx overflow
	   b5: rx count
	   b6: tx count
	   b7: gpr
	*/

	if (urb->actual_length < 8)
		return;

	buf = urb->transfer_buffer;

	link = !!(buf[0] & 0x40);
	if (FUNC2(dev->net) != link) {
		if (link) {
			FUNC3(dev->net);
			FUNC4 (dev, EVENT_LINK_RESET);
		}
		else
			FUNC1(dev->net);
		FUNC0(dev, "Link Status is: %d", link);
	}
}