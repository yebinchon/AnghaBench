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
 int /*<<< orphan*/  CAL_ADC_Command_67xx ; 
 int /*<<< orphan*/  CAL_ADC_Status_67xx ; 
 int CSS_ADC_BUSY ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_device*,char*) ; 
 int FUNC1 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,unsigned short,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct comedi_device *dev, unsigned short value)
{
	static const int timeout = 100;
	int i;

	FUNC2(dev, value, CAL_ADC_Command_67xx);
	/* give time for command to start being serially clocked into cs5529.
	 * this insures that the CSS_ADC_BUSY bit will get properly
	 * set before we exit this function.
	 */
	for (i = 0; i < timeout; i++) {
		if ((FUNC1(dev, CAL_ADC_Status_67xx) & CSS_ADC_BUSY))
			break;
		FUNC3(1);
	}
/* printk("looped %i times writing command to cs5529\n", i); */
	if (i == timeout) {
		FUNC0(dev, "possible problem - never saw adc go busy?");
	}
}