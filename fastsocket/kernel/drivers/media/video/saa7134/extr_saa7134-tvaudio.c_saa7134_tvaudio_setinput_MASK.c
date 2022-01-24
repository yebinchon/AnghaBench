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
struct saa7134_input {int dummy; } ;
struct saa7134_dev {TYPE_1__* pci; struct saa7134_input* input; } ;
struct TYPE_2__ {int device; } ;

/* Variables and functions */
#define  PCI_DEVICE_ID_PHILIPS_SAA7130 131 
#define  PCI_DEVICE_ID_PHILIPS_SAA7133 130 
#define  PCI_DEVICE_ID_PHILIPS_SAA7134 129 
#define  PCI_DEVICE_ID_PHILIPS_SAA7135 128 
 int /*<<< orphan*/  FUNC0 (struct saa7134_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct saa7134_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct saa7134_dev*) ; 

void FUNC3(struct saa7134_dev *dev,
			      struct saa7134_input *in)
{
	dev->input = in;
	switch (dev->pci->device) {
	case PCI_DEVICE_ID_PHILIPS_SAA7130:
	case PCI_DEVICE_ID_PHILIPS_SAA7134:
		FUNC1(dev);
		break;
	case PCI_DEVICE_ID_PHILIPS_SAA7133:
	case PCI_DEVICE_ID_PHILIPS_SAA7135:
		FUNC0(dev);
		break;
	}
	FUNC2(dev);
}