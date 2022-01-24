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
struct saa7134_dev {size_t board; TYPE_1__* pci; } ;
struct TYPE_4__ {int audio_clock; } ;
struct TYPE_3__ {int device; } ;

/* Variables and functions */
#define  PCI_DEVICE_ID_PHILIPS_SAA7133 130 
#define  PCI_DEVICE_ID_PHILIPS_SAA7134 129 
#define  PCI_DEVICE_ID_PHILIPS_SAA7135 128 
 int /*<<< orphan*/  SAA7134_AUDIO_CLOCK0 ; 
 int /*<<< orphan*/  SAA7134_AUDIO_CLOCK1 ; 
 int /*<<< orphan*/  SAA7134_AUDIO_CLOCK2 ; 
 int /*<<< orphan*/  SAA7134_AUDIO_PLL_CTRL ; 
 int /*<<< orphan*/  SAA7134_NICAM_ERROR_HIGH ; 
 int /*<<< orphan*/  SAA7134_NICAM_ERROR_LOW ; 
 int UNSET ; 
 int audio_clock_override ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_2__* saa7134_boards ; 
 int /*<<< orphan*/  FUNC1 (struct saa7134_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

void FUNC6(struct saa7134_dev *dev)
{
	int clock = saa7134_boards[dev->board].audio_clock;

	if (UNSET != audio_clock_override)
		clock = audio_clock_override;

	switch (dev->pci->device) {
	case PCI_DEVICE_ID_PHILIPS_SAA7134:
		/* init all audio registers */
		FUNC2(SAA7134_AUDIO_PLL_CTRL,   0x00);
		if (FUNC0())
			FUNC4();
		else
			FUNC5(10);

		FUNC2(SAA7134_AUDIO_CLOCK0,      clock        & 0xff);
		FUNC2(SAA7134_AUDIO_CLOCK1,     (clock >>  8) & 0xff);
		FUNC2(SAA7134_AUDIO_CLOCK2,     (clock >> 16) & 0xff);
		/* frame locked audio is mandatory for NICAM */
		FUNC2(SAA7134_AUDIO_PLL_CTRL,   0x01);
		FUNC2(SAA7134_NICAM_ERROR_LOW,  0x14);
		FUNC2(SAA7134_NICAM_ERROR_HIGH, 0x50);
		break;
	case PCI_DEVICE_ID_PHILIPS_SAA7133:
	case PCI_DEVICE_ID_PHILIPS_SAA7135:
		FUNC3(0x598 >> 2, clock);
		FUNC1(dev, 0x474 >> 2, 0x00);
		FUNC1(dev, 0x450 >> 2, 0x00);
	}
}