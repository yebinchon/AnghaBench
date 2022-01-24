#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct urb {int /*<<< orphan*/  transfer_dma; int /*<<< orphan*/  transfer_buffer_length; } ;
struct TYPE_2__ {int nfields; int num_bufs; struct urb** transfer_buffer; struct urb** urb; } ;
struct au0828_dev {TYPE_1__ isoc_ctl; int /*<<< orphan*/  usbdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct urb**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct urb*) ; 
 int /*<<< orphan*/  FUNC5 (struct urb*) ; 
 int /*<<< orphan*/  FUNC6 (struct urb*) ; 

void FUNC7(struct au0828_dev *dev)
{
	struct urb *urb;
	int i;

	FUNC0("au0828: called au0828_uninit_isoc\n");

	dev->isoc_ctl.nfields = -1;
	for (i = 0; i < dev->isoc_ctl.num_bufs; i++) {
		urb = dev->isoc_ctl.urb[i];
		if (urb) {
			if (!FUNC1())
				FUNC5(urb);
			else
				FUNC6(urb);

			if (dev->isoc_ctl.transfer_buffer[i]) {
				FUNC3(dev->usbdev,
					urb->transfer_buffer_length,
					dev->isoc_ctl.transfer_buffer[i],
					urb->transfer_dma);
			}
			FUNC4(urb);
			dev->isoc_ctl.urb[i] = NULL;
		}
		dev->isoc_ctl.transfer_buffer[i] = NULL;
	}

	FUNC2(dev->isoc_ctl.urb);
	FUNC2(dev->isoc_ctl.transfer_buffer);

	dev->isoc_ctl.urb = NULL;
	dev->isoc_ctl.transfer_buffer = NULL;
	dev->isoc_ctl.num_bufs = 0;
}