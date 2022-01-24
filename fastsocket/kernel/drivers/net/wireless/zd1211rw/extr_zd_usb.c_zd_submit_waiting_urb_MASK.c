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
struct zd_usb {int /*<<< orphan*/  submitted_cmds; struct urb* urb_async_waiting; } ;
struct urb {int /*<<< orphan*/  transfer_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  URB_NO_INTERRUPT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct urb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct urb*) ; 
 int FUNC3 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct urb*) ; 
 int /*<<< orphan*/  FUNC5 (struct zd_usb*) ; 

__attribute__((used)) static int FUNC6(struct zd_usb *usb, bool last)
{
	int r = 0;
	struct urb *urb = usb->urb_async_waiting;

	if (!urb)
		return 0;

	usb->urb_async_waiting = NULL;

	if (!last)
		urb->transfer_flags |= URB_NO_INTERRUPT;

	FUNC1(urb, &usb->submitted_cmds);
	r = FUNC3(urb, GFP_KERNEL);
	if (r) {
		FUNC4(urb);
		FUNC0(FUNC5(usb),
			"error in usb_submit_urb(). Error number %d\n", r);
		goto error;
	}

	/* fall-through with r == 0 */
error:
	FUNC2(urb);
	return r;
}