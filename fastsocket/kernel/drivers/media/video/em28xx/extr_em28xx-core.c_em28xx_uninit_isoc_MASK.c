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
struct em28xx {TYPE_1__ isoc_ctl; int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct em28xx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct urb**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct urb*) ; 
 int /*<<< orphan*/  FUNC6 (struct urb*) ; 
 int /*<<< orphan*/  FUNC7 (struct urb*) ; 

void FUNC8(struct em28xx *dev)
{
	struct urb *urb;
	int i;

	FUNC1("em28xx: called em28xx_uninit_isoc\n");

	dev->isoc_ctl.nfields = -1;
	for (i = 0; i < dev->isoc_ctl.num_bufs; i++) {
		urb = dev->isoc_ctl.urb[i];
		if (urb) {
			if (!FUNC2())
				FUNC6(urb);
			else
				FUNC7(urb);

			if (dev->isoc_ctl.transfer_buffer[i]) {
				FUNC4(dev->udev,
					urb->transfer_buffer_length,
					dev->isoc_ctl.transfer_buffer[i],
					urb->transfer_dma);
			}
			FUNC5(urb);
			dev->isoc_ctl.urb[i] = NULL;
		}
		dev->isoc_ctl.transfer_buffer[i] = NULL;
	}

	FUNC3(dev->isoc_ctl.urb);
	FUNC3(dev->isoc_ctl.transfer_buffer);

	dev->isoc_ctl.urb = NULL;
	dev->isoc_ctl.transfer_buffer = NULL;
	dev->isoc_ctl.num_bufs = 0;

	FUNC0(dev, 0);
}