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
struct ni_gpct {int /*<<< orphan*/  counter_index; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  Gi_Gate_Select_Mask ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int NI_660x_Next_SRC_Gate_Select ; 
 unsigned int const FUNC3 (unsigned int) ; 
#define  NI_GPCT_GATE_PIN_i_GATE_SELECT 132 
#define  NI_GPCT_LOGIC_LOW_GATE_SELECT 131 
#define  NI_GPCT_NEXT_OUT_GATE_SELECT 130 
#define  NI_GPCT_NEXT_SOURCE_GATE_SELECT 129 
 unsigned int const FUNC4 (unsigned int) ; 
#define  NI_GPCT_SOURCE_PIN_i_GATE_SELECT 128 
 unsigned int ni_660x_max_gate_pin ; 
 unsigned int ni_660x_max_rtsi_channel ; 
 int /*<<< orphan*/  FUNC5 (struct ni_gpct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct ni_gpct *counter,
				  unsigned int gate_source)
{
	const unsigned selected_gate = FUNC0(gate_source);
	/* bits of selected_gate that may be meaningful to input select register */
	const unsigned selected_gate_mask = 0x1f;
	unsigned ni_660x_gate_select;
	unsigned i;

	switch (selected_gate) {
	case NI_GPCT_NEXT_SOURCE_GATE_SELECT:
		ni_660x_gate_select = NI_660x_Next_SRC_Gate_Select;
		break;
	case NI_GPCT_NEXT_OUT_GATE_SELECT:
	case NI_GPCT_LOGIC_LOW_GATE_SELECT:
	case NI_GPCT_SOURCE_PIN_i_GATE_SELECT:
	case NI_GPCT_GATE_PIN_i_GATE_SELECT:
		ni_660x_gate_select = selected_gate & selected_gate_mask;
		break;
	default:
		for (i = 0; i <= ni_660x_max_rtsi_channel; ++i) {
			if (selected_gate == FUNC4(i)) {
				ni_660x_gate_select =
				    selected_gate & selected_gate_mask;
				break;
			}
		}
		if (i <= ni_660x_max_rtsi_channel)
			break;
		for (i = 0; i <= ni_660x_max_gate_pin; ++i) {
			if (selected_gate == FUNC3(i)) {
				ni_660x_gate_select =
				    selected_gate & selected_gate_mask;
				break;
			}
		}
		if (i <= ni_660x_max_gate_pin)
			break;
		return -EINVAL;
		break;
	}
	FUNC5(counter,
			FUNC2(counter->counter_index),
			Gi_Gate_Select_Mask,
			FUNC1(ni_660x_gate_select));
	return 0;
}