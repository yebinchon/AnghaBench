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
struct comedi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAL_ADC_Data_67xx ; 
 int /*<<< orphan*/  CAL_ADC_Status_67xx ; 
 int CSCMD_COMMAND ; 
 int CSCMD_SINGLE_CONVERSION ; 
 unsigned short CSS_OSC_DETECT ; 
 unsigned short CSS_OVERRANGE ; 
 int EIO ; 
 int ETIME ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,int) ; 
 int FUNC2 (struct comedi_device*) ; 
 unsigned short FUNC3 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(struct comedi_device *dev, unsigned short *data)
{
	int retval;
	unsigned short status;

	FUNC1(dev, CSCMD_COMMAND | CSCMD_SINGLE_CONVERSION);
	retval = FUNC2(dev);
	if (retval) {
		FUNC0(dev,
			     "timeout or signal in cs5529_do_conversion()");
		return -ETIME;
	}
	status = FUNC3(dev, CAL_ADC_Status_67xx);
	if (status & CSS_OSC_DETECT) {
		FUNC4
		    ("ni_mio_common: cs5529 conversion error, status CSS_OSC_DETECT\n");
		return -EIO;
	}
	if (status & CSS_OVERRANGE) {
		FUNC4
		    ("ni_mio_common: cs5529 conversion error, overrange (ignoring)\n");
	}
	if (data) {
		*data = FUNC3(dev, CAL_ADC_Data_67xx);
		/* cs5529 returns 16 bit signed data in bipolar mode */
		*data ^= (1 << 15);
	}
	return 0;
}