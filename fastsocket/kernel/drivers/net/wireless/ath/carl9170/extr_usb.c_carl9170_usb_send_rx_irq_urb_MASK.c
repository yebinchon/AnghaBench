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
struct urb {int /*<<< orphan*/  transfer_flags; } ;
struct ar9170 {int /*<<< orphan*/  rx_anch; int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR9170_USB_EP_CTRL_MAX ; 
 int /*<<< orphan*/  AR9170_USB_EP_IRQ ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  URB_FREE_BUFFER ; 
 int /*<<< orphan*/  carl9170_usb_rx_irq_complete ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct urb* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct urb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct urb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ar9170*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct urb*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct urb*) ; 

__attribute__((used)) static int FUNC8(struct ar9170 *ar)
{
	struct urb *urb = NULL;
	void *ibuf;
	int err = -ENOMEM;

	urb = FUNC1(0, GFP_KERNEL);
	if (!urb)
		goto out;

	ibuf = FUNC0(AR9170_USB_EP_CTRL_MAX, GFP_KERNEL);
	if (!ibuf)
		goto out;

	FUNC3(urb, ar->udev, FUNC5(ar->udev,
			 AR9170_USB_EP_IRQ), ibuf, AR9170_USB_EP_CTRL_MAX,
			 carl9170_usb_rx_irq_complete, ar, 1);

	urb->transfer_flags |= URB_FREE_BUFFER;

	FUNC2(urb, &ar->rx_anch);
	err = FUNC6(urb, GFP_KERNEL);
	if (err)
		FUNC7(urb);

out:
	FUNC4(urb);
	return err;
}