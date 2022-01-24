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
struct urb {int actual_length; int /*<<< orphan*/  transfer_buffer; int /*<<< orphan*/  status; struct mceusb_dev* context; } ;
struct pt_regs {int dummy; } ;
struct mceusb_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mceusb_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC2(struct urb *urb, struct pt_regs *regs)
{
	struct mceusb_dev *ir;
	int len;

	if (!urb)
		return;

	ir = urb->context;
	if (ir) {
		len = urb->actual_length;

		FUNC0(ir->dev, "callback called (status=%d len=%d)\n",
			urb->status, len);

		FUNC1(ir, urb->transfer_buffer, 0, len, true);
	}

}