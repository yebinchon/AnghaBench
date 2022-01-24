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
typedef  int u32 ;
struct usbnet {int dummy; } ;
struct urb {int actual_length; int /*<<< orphan*/  transfer_buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_LINK_RESET ; 
 int INT_ENP_PHY_INT_ ; 
 int /*<<< orphan*/  FUNC0 (struct usbnet*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct usbnet*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct usbnet*) ; 
 int /*<<< orphan*/  FUNC5 (struct usbnet*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct usbnet *dev, struct urb *urb)
{
	u32 intdata;

	if (urb->actual_length != 4) {
		FUNC1(dev, "unexpected urb length %d", urb->actual_length);
		return;
	}

	FUNC3(&intdata, urb->transfer_buffer, 4);
	FUNC2(&intdata);

	if (FUNC4(dev))
		FUNC0(dev, "intdata: 0x%08X", intdata);

	if (intdata & INT_ENP_PHY_INT_)
		FUNC5(dev, EVENT_LINK_RESET);
	else
		FUNC1(dev, "unexpected interrupt, intdata=0x%08X", intdata);
}