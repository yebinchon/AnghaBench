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
struct TYPE_2__ {unsigned int* ao_range; int /*<<< orphan*/ * eeprom_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 TYPE_1__* devpriv ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int) ; 
 size_t FUNC8 (unsigned int,unsigned int) ; 
 size_t FUNC9 (unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC10(struct comedi_device *dev, unsigned int channel,
				unsigned int range)
{
	unsigned int coarse_offset, fine_offset, coarse_gain, fine_gain;

	/*  remember range so we can tell when we need to readjust calibration */
	devpriv->ao_range[channel] = range;

	/*  get values from eeprom data */
	coarse_offset =
	    FUNC4(devpriv->eeprom_data
			       [FUNC9(channel, range)]);
	fine_offset =
	    FUNC5(devpriv->eeprom_data
			     [FUNC9(channel, range)]);
	coarse_gain =
	    FUNC4(devpriv->eeprom_data
			       [FUNC8(channel, range)]);
	fine_gain =
	    FUNC5(devpriv->eeprom_data
			     [FUNC8(channel, range)]);

	/*  set caldacs */
	FUNC1(dev, FUNC0(channel),
			       FUNC3(channel), coarse_offset);
	FUNC1(dev, FUNC0(channel),
			       FUNC7(channel), fine_offset);
	FUNC1(dev, FUNC0(channel),
			       FUNC2(channel), coarse_gain);
	FUNC1(dev, FUNC0(channel),
			       FUNC6(channel), fine_gain);
}