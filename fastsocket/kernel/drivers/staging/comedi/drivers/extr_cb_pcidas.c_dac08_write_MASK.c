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
struct TYPE_2__ {unsigned int dac08_value; scalar_t__ control_status; } ;

/* Variables and functions */
 scalar_t__ CALIBRATION_REG ; 
 unsigned int SELECT_DAC08_BIT ; 
 unsigned int FUNC0 (struct comedi_device*) ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct comedi_device *dev, unsigned int value)
{
	if (devpriv->dac08_value == value)
		return 1;

	devpriv->dac08_value = value;

	FUNC1(FUNC0(dev) | (value & 0xff),
	     devpriv->control_status + CALIBRATION_REG);
	FUNC2(1);
	FUNC1(FUNC0(dev) | SELECT_DAC08_BIT | (value & 0xff),
	     devpriv->control_status + CALIBRATION_REG);
	FUNC2(1);
	FUNC1(FUNC0(dev) | (value & 0xff),
	     devpriv->control_status + CALIBRATION_REG);
	FUNC2(1);

	return 1;
}