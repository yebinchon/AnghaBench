#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct saa7134_dev {TYPE_2__* input; TYPE_1__* pci; } ;
struct TYPE_4__ {int /*<<< orphan*/  amux; } ;
struct TYPE_3__ {int device; } ;

/* Variables and functions */
 int PCI_DEVICE_ID_PHILIPS_SAA7130 ; 
#define  PCI_DEVICE_ID_PHILIPS_SAA7133 130 
#define  PCI_DEVICE_ID_PHILIPS_SAA7134 129 
#define  PCI_DEVICE_ID_PHILIPS_SAA7135 128 
 int /*<<< orphan*/  SAA7133_I2S_AUDIO_CONTROL ; 
 int SAA7134_GPIO_GPMODE0 ; 
 int /*<<< orphan*/  SAA7134_I2S_AUDIO_OUTPUT ; 
 int /*<<< orphan*/  SAA7134_I2S_OUTPUT_FORMAT ; 
 int /*<<< orphan*/  SAA7134_I2S_OUTPUT_LEVEL ; 
 int /*<<< orphan*/  SAA7134_I2S_OUTPUT_SELECT ; 
 int /*<<< orphan*/  TV ; 
 int /*<<< orphan*/  FUNC0 (struct saa7134_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

void FUNC3(struct saa7134_dev *dev)
{
	int i2s_format;

	if (!FUNC0(dev))
		return;

	if (dev->pci->device == PCI_DEVICE_ID_PHILIPS_SAA7130)
		return;

	/* configure GPIO for out */
	FUNC1(SAA7134_GPIO_GPMODE0 >> 2, 0x0E000000, 0x00000000);

	switch (dev->pci->device) {
	case PCI_DEVICE_ID_PHILIPS_SAA7133:
	case PCI_DEVICE_ID_PHILIPS_SAA7135:
	    /* Set I2S format (SONY)  */
	    FUNC2(SAA7133_I2S_AUDIO_CONTROL, 0x00);
	    /* Start I2S */
	    FUNC2(SAA7134_I2S_AUDIO_OUTPUT, 0x11);
	    break;

	case PCI_DEVICE_ID_PHILIPS_SAA7134:
	    i2s_format = (dev->input->amux == TV) ? 0x00 : 0x01;

	    /* enable I2S audio output for the mpeg encoder */
	    FUNC2(SAA7134_I2S_OUTPUT_SELECT, 0x80);
	    FUNC2(SAA7134_I2S_OUTPUT_FORMAT, i2s_format);
	    FUNC2(SAA7134_I2S_OUTPUT_LEVEL,  0x0F);
	    FUNC2(SAA7134_I2S_AUDIO_OUTPUT,  0x01);

	default:
	    break;
	}
}