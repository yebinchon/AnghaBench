#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct snd_kcontrol {int private_value; } ;
struct TYPE_6__ {int* value; } ;
struct TYPE_7__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct saa7134_dev {TYPE_3__* pci; } ;
struct TYPE_9__ {int** mixer_volume; int /*<<< orphan*/  mixer_lock; struct saa7134_dev* dev; } ;
typedef  TYPE_4__ snd_card_saa7134_t ;
struct TYPE_8__ {int device; } ;

/* Variables and functions */
#define  MIXER_ADDR_LINE1 133 
#define  MIXER_ADDR_LINE2 132 
#define  MIXER_ADDR_TVTUNER 131 
#define  PCI_DEVICE_ID_PHILIPS_SAA7133 130 
#define  PCI_DEVICE_ID_PHILIPS_SAA7134 129 
#define  PCI_DEVICE_ID_PHILIPS_SAA7135 128 
 int SAA7134_ANALOG_IO_SELECT ; 
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
 TYPE_4__* FUNC1 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct snd_kcontrol * kcontrol,
				  struct snd_ctl_elem_value * ucontrol)
{
	snd_card_saa7134_t *chip = FUNC1(kcontrol);
	struct saa7134_dev *dev = chip->dev;

	int change, addr = kcontrol->private_value;
	int left, right;

	left = ucontrol->value.integer.value[0];
	if (left < 0)
		left = 0;
	if (left > 20)
		left = 20;
	right = ucontrol->value.integer.value[1];
	if (right < 0)
		right = 0;
	if (right > 20)
		right = 20;
	FUNC2(&chip->mixer_lock);
	change = 0;
	if (chip->mixer_volume[addr][0] != left) {
		change = 1;
		right = left;
	}
	if (chip->mixer_volume[addr][1] != right) {
		change = 1;
		left = right;
	}
	if (change) {
		switch (dev->pci->device) {
			case PCI_DEVICE_ID_PHILIPS_SAA7134:
				switch (addr) {
					case MIXER_ADDR_TVTUNER:
						left = 20;
						break;
					case MIXER_ADDR_LINE1:
						FUNC0(SAA7134_ANALOG_IO_SELECT,  0x10,
							   (left > 10) ? 0x00 : 0x10);
						break;
					case MIXER_ADDR_LINE2:
						FUNC0(SAA7134_ANALOG_IO_SELECT,  0x20,
							   (left > 10) ? 0x00 : 0x20);
						break;
				}
				break;
			case PCI_DEVICE_ID_PHILIPS_SAA7133:
			case PCI_DEVICE_ID_PHILIPS_SAA7135:
				switch (addr) {
					case MIXER_ADDR_TVTUNER:
						left = 20;
						break;
					case MIXER_ADDR_LINE1:
						FUNC0(0x0594,  0x10,
							   (left > 10) ? 0x00 : 0x10);
						break;
					case MIXER_ADDR_LINE2:
						FUNC0(0x0594,  0x20,
							   (left > 10) ? 0x00 : 0x20);
						break;
				}
				break;
		}
		chip->mixer_volume[addr][0] = left;
		chip->mixer_volume[addr][1] = right;
	}
	FUNC3(&chip->mixer_lock);
	return change;
}