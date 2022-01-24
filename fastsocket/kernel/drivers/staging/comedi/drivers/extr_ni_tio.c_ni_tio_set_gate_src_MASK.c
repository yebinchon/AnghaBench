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
struct ni_gpct_device {int /*<<< orphan*/  variant; int /*<<< orphan*/ * regs; } ;
struct ni_gpct {int /*<<< orphan*/  counter_index; struct ni_gpct_device* counter_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 unsigned int CR_INVERT ; 
 int EINVAL ; 
 int /*<<< orphan*/  Gi_Gating_Disabled_Bits ; 
 int /*<<< orphan*/  Gi_Gating_Mode_Mask ; 
 int /*<<< orphan*/  Gi_Second_Gate_Mode_Bit ; 
 int /*<<< orphan*/  Gi_Second_Gate_Polarity_Bit ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NI_GPCT_DISABLED_GATE_SELECT ; 
 int FUNC4 (struct ni_gpct*,unsigned int) ; 
 int FUNC5 (struct ni_gpct*,unsigned int) ; 
#define  ni_gpct_variant_660x 130 
#define  ni_gpct_variant_e_series 129 
#define  ni_gpct_variant_m_series 128 
 int FUNC6 (struct ni_gpct*,unsigned int) ; 
 int FUNC7 (struct ni_gpct*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct ni_gpct_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct ni_gpct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ni_gpct*,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (struct ni_gpct*,int /*<<< orphan*/ ,unsigned int const) ; 

int FUNC12(struct ni_gpct *counter, unsigned gate_index,
			unsigned int gate_source)
{
	struct ni_gpct_device *counter_dev = counter->counter_dev;
	const unsigned second_gate_reg =
	    FUNC3(counter->counter_index);

	switch (gate_index) {
	case 0:
		if (FUNC1(gate_source) == NI_GPCT_DISABLED_GATE_SELECT) {
			FUNC9(counter,
					FUNC2(counter->
							  counter_index),
					Gi_Gating_Mode_Mask,
					Gi_Gating_Disabled_Bits);
			return 0;
		}
		FUNC10(counter, gate_source);
		switch (counter_dev->variant) {
		case ni_gpct_variant_e_series:
		case ni_gpct_variant_m_series:
			return FUNC6(counter, gate_source);
			break;
		case ni_gpct_variant_660x:
			return FUNC4(counter, gate_source);
			break;
		default:
			FUNC0();
			break;
		}
		break;
	case 1:
		if (FUNC8(counter_dev) == 0)
			return -EINVAL;
		if (FUNC1(gate_source) == NI_GPCT_DISABLED_GATE_SELECT) {
			counter_dev->regs[second_gate_reg] &=
			    ~Gi_Second_Gate_Mode_Bit;
			FUNC11(counter,
				       counter_dev->regs[second_gate_reg],
				       second_gate_reg);
			return 0;
		}
		if (gate_source & CR_INVERT) {
			counter_dev->regs[second_gate_reg] |=
			    Gi_Second_Gate_Polarity_Bit;
		} else {
			counter_dev->regs[second_gate_reg] &=
			    ~Gi_Second_Gate_Polarity_Bit;
		}
		switch (counter_dev->variant) {
		case ni_gpct_variant_m_series:
			return FUNC7(counter,
							   gate_source);
			break;
		case ni_gpct_variant_660x:
			return FUNC5(counter, gate_source);
			break;
		default:
			FUNC0();
			break;
		}
		break;
	default:
		return -EINVAL;
		break;
	}
	return 0;
}