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
struct cx23885_dev {int board; int /*<<< orphan*/ * sd_ir; } ;

/* Variables and functions */
#define  CX23885_BOARD_HAUPPAUGE_HVR1250 131 
#define  CX23885_BOARD_HAUPPAUGE_HVR1290 130 
#define  CX23885_BOARD_HAUPPAUGE_HVR1850 129 
#define  CX23885_BOARD_TEVII_S470 128 
 int /*<<< orphan*/  PCI_MSK_AV_CORE ; 
 int /*<<< orphan*/  PCI_MSK_IR ; 
 int /*<<< orphan*/  FUNC0 (struct cx23885_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cx23885_dev*) ; 

void FUNC2(struct cx23885_dev *dev)
{
	switch (dev->board) {
	case CX23885_BOARD_HAUPPAUGE_HVR1850:
	case CX23885_BOARD_HAUPPAUGE_HVR1290:
		FUNC0(dev, PCI_MSK_IR);
		FUNC1(dev);
		dev->sd_ir = NULL;
		break;
	case CX23885_BOARD_TEVII_S470:
	case CX23885_BOARD_HAUPPAUGE_HVR1250:
		FUNC0(dev, PCI_MSK_AV_CORE);
		/* sd_ir is a duplicate pointer to the AV Core, just clear it */
		dev->sd_ir = NULL;
		break;
	}
}