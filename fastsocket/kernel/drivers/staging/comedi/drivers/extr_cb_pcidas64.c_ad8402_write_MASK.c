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
struct TYPE_2__ {unsigned int* ad8402_state; scalar_t__ main_iobase; } ;

/* Variables and functions */
 scalar_t__ CALIBRATION_REG ; 
 unsigned int SELECT_8402_64XX_BIT ; 
 unsigned int SERIAL_CLOCK_BIT ; 
 unsigned int SERIAL_DATA_IN_BIT ; 
 TYPE_1__* FUNC0 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC1 (int const) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct comedi_device *dev, unsigned int channel,
			 unsigned int value)
{
	static const int bitstream_length = 10;
	unsigned int bit, register_bits;
	unsigned int bitstream = ((channel & 0x3) << 8) | (value & 0xff);
	static const int ad8402_udelay = 1;

	FUNC0(dev)->ad8402_state[channel] = value;

	register_bits = SELECT_8402_64XX_BIT;
	FUNC1(ad8402_udelay);
	FUNC2(register_bits, FUNC0(dev)->main_iobase + CALIBRATION_REG);

	for (bit = 1 << (bitstream_length - 1); bit; bit >>= 1) {
		if (bitstream & bit)
			register_bits |= SERIAL_DATA_IN_BIT;
		else
			register_bits &= ~SERIAL_DATA_IN_BIT;
		FUNC1(ad8402_udelay);
		FUNC2(register_bits, FUNC0(dev)->main_iobase + CALIBRATION_REG);
		FUNC1(ad8402_udelay);
		FUNC2(register_bits | SERIAL_CLOCK_BIT,
		       FUNC0(dev)->main_iobase + CALIBRATION_REG);
	}

	FUNC1(ad8402_udelay);
	FUNC2(0, FUNC0(dev)->main_iobase + CALIBRATION_REG);
}