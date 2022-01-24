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
struct comedi_device {int dummy; } ;
struct TYPE_2__ {unsigned short (* stc_readw ) (struct comedi_device*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 unsigned short AO_FIFO_Half_Full_St ; 
 int /*<<< orphan*/  AO_Status_1_Register ; 
 int EPIPE ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_device*,char*) ; 
 TYPE_1__* devpriv ; 
 unsigned short FUNC1 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct comedi_device *dev)
{
	static const int timeout = 10000;
	int i;
	for (i = 0; i < timeout; i++) {
		unsigned short b_status;

		b_status = devpriv->stc_readw(dev, AO_Status_1_Register);
		if (b_status & AO_FIFO_Half_Full_St)
			break;
		/* if we poll too often, the pci bus activity seems
		   to slow the dma transfer down */
		FUNC2(10);
	}
	if (i == timeout) {
		FUNC0(dev, "timed out waiting for dma load");
		return -EPIPE;
	}
	return 0;
}