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
typedef  int uint8_t ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ control_status; } ;

/* Variables and functions */
 scalar_t__ CALIBRATION_REG ; 
 unsigned int SELECT_TRIMPOT_BIT ; 
 unsigned int FUNC0 (struct comedi_device*) ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int const) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,unsigned int,unsigned int,int const) ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev, uint8_t value)
{
	static const int bitstream_length = 7;
	unsigned int bitstream = value & 0x7f;
	unsigned int register_bits;
	static const int ad7376_udelay = 1;

	register_bits = FUNC0(dev) | SELECT_TRIMPOT_BIT;
	FUNC2(ad7376_udelay);
	FUNC1(register_bits, devpriv->control_status + CALIBRATION_REG);

	FUNC3(dev, register_bits, bitstream,
				    bitstream_length);

	FUNC2(ad7376_udelay);
	FUNC1(FUNC0(dev), devpriv->control_status + CALIBRATION_REG);

	return 0;
}