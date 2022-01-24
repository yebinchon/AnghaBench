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
typedef  unsigned int uint64_t ;
struct ni_gpct_device {int variant; } ;
struct ni_gpct {unsigned int clock_period_ps; int /*<<< orphan*/  counter_index; struct ni_gpct_device* counter_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int EINVAL ; 
 unsigned int FUNC1 (int) ; 
 unsigned int FUNC2 (int) ; 
 unsigned int Gi_Source_Polarity_Bit ; 
 unsigned int Gi_Source_Select_Mask ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned int NI_GPCT_INVERT_CLOCK_SRC_BIT ; 
#define  NI_GPCT_NO_PRESCALE_CLOCK_SRC_BITS 133 
 unsigned int NI_GPCT_PRESCALE_MODE_CLOCK_SRC_MASK ; 
#define  NI_GPCT_PRESCALE_X2_CLOCK_SRC_BITS 132 
#define  NI_GPCT_PRESCALE_X8_CLOCK_SRC_BITS 131 
 unsigned int FUNC5 (unsigned int) ; 
#define  ni_gpct_variant_660x 130 
#define  ni_gpct_variant_e_series 129 
#define  ni_gpct_variant_m_series 128 
 unsigned int FUNC6 (unsigned int) ; 
 scalar_t__ FUNC7 (struct ni_gpct_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct ni_gpct*,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct ni_gpct*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (struct ni_gpct*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct ni_gpct *counter,
				unsigned int clock_source,
				unsigned int period_ns)
{
	struct ni_gpct_device *counter_dev = counter->counter_dev;
	unsigned input_select_bits = 0;
	static const uint64_t pico_per_nano = 1000;

/*FIXME: validate clock source */
	switch (counter_dev->variant) {
	case ni_gpct_variant_660x:
		input_select_bits |= FUNC5(clock_source);
		break;
	case ni_gpct_variant_e_series:
	case ni_gpct_variant_m_series:
		input_select_bits |=
		    FUNC6(clock_source);
		break;
	default:
		FUNC0();
		break;
	}
	if (clock_source & NI_GPCT_INVERT_CLOCK_SRC_BIT)
		input_select_bits |= Gi_Source_Polarity_Bit;
	FUNC8(counter,
			FUNC4(counter->counter_index),
			Gi_Source_Select_Mask | Gi_Source_Polarity_Bit,
			input_select_bits);
	FUNC9(counter, clock_source);
	if (FUNC7(counter_dev)) {
		const unsigned prescaling_mode =
		    clock_source & NI_GPCT_PRESCALE_MODE_CLOCK_SRC_MASK;
		unsigned counting_mode_bits = 0;

		switch (prescaling_mode) {
		case NI_GPCT_NO_PRESCALE_CLOCK_SRC_BITS:
			break;
		case NI_GPCT_PRESCALE_X2_CLOCK_SRC_BITS:
			counting_mode_bits |=
			    FUNC1(counter_dev->variant);
			break;
		case NI_GPCT_PRESCALE_X8_CLOCK_SRC_BITS:
			counting_mode_bits |=
			    FUNC2(counter_dev->variant);
			break;
		default:
			return -EINVAL;
			break;
		}
		FUNC8(counter,
				FUNC3(counter->
							   counter_index),
				FUNC1(counter_dev->variant) |
				FUNC2(counter_dev->variant),
				counting_mode_bits);
	}
	counter->clock_period_ps = pico_per_nano * period_ns;
	FUNC10(counter, 0);
	return 0;
}