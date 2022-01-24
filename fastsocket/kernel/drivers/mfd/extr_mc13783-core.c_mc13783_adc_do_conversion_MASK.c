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
struct mc13783 {int /*<<< orphan*/  adc_conv_lock; scalar_t__ ts_active; int /*<<< orphan*/  adc_done; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int MC13783_ADC0_ADINC1 ; 
 unsigned int MC13783_ADC0_ADINC2 ; 
 unsigned int MC13783_ADC0_ADREFEN ; 
 unsigned int MC13783_ADC0_ADREFMODE ; 
 unsigned int MC13783_ADC0_TSMOD0 ; 
 unsigned int MC13783_ADC0_TSMOD1 ; 
 unsigned int MC13783_ADC1_ADEN ; 
 unsigned int MC13783_ADC1_ADSEL ; 
 unsigned int MC13783_ADC1_ADTRIGIGN ; 
 unsigned int MC13783_ADC1_ASC ; 
 unsigned int MC13783_ADC1_CHAN0_SHIFT ; 
 int MC13783_ADC1_CHAN1_SHIFT ; 
 unsigned int MC13783_ADC1_RAND ; 
#define  MC13783_ADC_MODE_MULT_CHAN 130 
#define  MC13783_ADC_MODE_SINGLE_CHAN 129 
#define  MC13783_ADC_MODE_TS 128 
 int /*<<< orphan*/  MC13783_REG_ADC_0 ; 
 int /*<<< orphan*/  MC13783_REG_ADC_1 ; 
 int /*<<< orphan*/  MC13783_REG_ADC_2 ; 
 int /*<<< orphan*/  FUNC0 (struct mc13783*) ; 
 int /*<<< orphan*/  FUNC1 (struct mc13783*,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (struct mc13783*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct mc13783 *mc13783, unsigned int mode,
		unsigned int channel, unsigned int *sample)
{
	unsigned int reg_adc0, reg_adc1;
	int i;

	FUNC3(&mc13783->adc_conv_lock);

	/* set up auto incrementing anyway to make quick read */
	reg_adc0 =  MC13783_ADC0_ADINC1 | MC13783_ADC0_ADINC2;
	/* enable the adc, ignore external triggering and set ASC to trigger
	 * conversion */
	reg_adc1 =  MC13783_ADC1_ADEN | MC13783_ADC1_ADTRIGIGN
		| MC13783_ADC1_ASC;

	/* setup channel number */
	if (channel > 7)
		reg_adc1 |= MC13783_ADC1_ADSEL;

	switch (mode) {
	case MC13783_ADC_MODE_TS:
		/* enables touch screen reference mode and set touchscreen mode
		 * to position mode */
		reg_adc0 |= MC13783_ADC0_ADREFEN | MC13783_ADC0_ADREFMODE
			| MC13783_ADC0_TSMOD0 | MC13783_ADC0_TSMOD1;
		reg_adc1 |= 4 << MC13783_ADC1_CHAN1_SHIFT;
		break;
	case MC13783_ADC_MODE_SINGLE_CHAN:
		reg_adc1 |= (channel & 0x7) << MC13783_ADC1_CHAN0_SHIFT;
		reg_adc1 |= MC13783_ADC1_RAND;
		break;
	case MC13783_ADC_MODE_MULT_CHAN:
		reg_adc1 |= 4 << MC13783_ADC1_CHAN1_SHIFT;
		break;
	default:
		return -EINVAL;
	}

	FUNC2(mc13783, MC13783_REG_ADC_0, reg_adc0);
	FUNC2(mc13783, MC13783_REG_ADC_1, reg_adc1);

	FUNC5(&mc13783->adc_done);

	for (i = 0; i < 4; i++)
		FUNC1(mc13783, MC13783_REG_ADC_2, &sample[i]);

	if (mc13783->ts_active)
		FUNC0(mc13783);

	FUNC4(&mc13783->adc_conv_lock);

	return 0;
}