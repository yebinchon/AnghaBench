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
struct TYPE_2__ {scalar_t__ plx; } ;

/* Variables and functions */
 int /*<<< orphan*/  DAQBOARD2000_CPLD_INIT ; 
 int DAQBOARD2000_EEPROM_PRESENT ; 
 int EIO ; 
 scalar_t__ FUNC0 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*,int) ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int FUNC6 (scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct comedi_device *dev,
				   unsigned char *cpld_array, int len)
{
	int result = -EIO;
	/* Read the serial EEPROM control register */
	int secr;
	int retry;
	int i;

	/* Check to make sure the serial eeprom is present on the board */
	secr = FUNC6(devpriv->plx + 0x6c);
	if (!(secr & DAQBOARD2000_EEPROM_PRESENT)) {
#ifdef DEBUG_EEPROM
		printk("no serial eeprom\n");
#endif
		return -EIO;
	}

	for (retry = 0; retry < 3; retry++) {
#ifdef DEBUG_EEPROM
		printk("Programming EEPROM try %x\n", retry);
#endif

		FUNC3(dev);
		FUNC2(dev);
		FUNC1(dev);
		if (FUNC0(dev, DAQBOARD2000_CPLD_INIT)) {
			for (i = 0; i < len; i++) {
				if (cpld_array[i] == 0xff
				    && cpld_array[i + 1] == 0x20) {
#ifdef DEBUG_EEPROM
					printk("Preamble found at %d\n", i);
#endif
					break;
				}
			}
			for (; i < len; i += 2) {
				int data =
				    (cpld_array[i] << 8) + cpld_array[i + 1];
				if (!FUNC4(dev, data)) {
					break;
				}
			}
			if (i >= len) {
#ifdef DEBUG_EEPROM
				printk("Programmed\n");
#endif
				FUNC3(dev);
				FUNC2(dev);
				result = 0;
				break;
			}
		}
	}
	return result;
}