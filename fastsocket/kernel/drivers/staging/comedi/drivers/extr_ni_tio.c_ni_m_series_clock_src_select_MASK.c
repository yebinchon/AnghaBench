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
struct ni_gpct_device {int* regs; } ;
struct ni_gpct {int /*<<< orphan*/  counter_index; struct ni_gpct_device* counter_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned int Gi_Source_Select_Mask ; 
 unsigned int Gi_Source_Select_Shift ; 
 int Gi_Source_Subselect_Bit ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int NI_GPCT_ANALOG_TRIGGER_OUT_CLOCK_SRC_BITS ; 
 unsigned int NI_GPCT_LOGIC_LOW_CLOCK_SRC_BITS ; 
 unsigned int NI_GPCT_NEXT_GATE_CLOCK_SRC_BITS ; 
 unsigned int NI_GPCT_NEXT_TC_CLOCK_SRC_BITS ; 
 unsigned int FUNC3 (unsigned int) ; 
 unsigned int NI_GPCT_PXI10_CLOCK_SRC_BITS ; 
 unsigned int NI_GPCT_PXI_STAR_TRIGGER_CLOCK_SRC_BITS ; 
 unsigned int FUNC4 (unsigned int) ; 
 unsigned int NI_GPCT_TIMEBASE_1_CLOCK_SRC_BITS ; 
 unsigned int NI_GPCT_TIMEBASE_2_CLOCK_SRC_BITS ; 
 unsigned int NI_GPCT_TIMEBASE_3_CLOCK_SRC_BITS ; 
#define  NI_M_Series_Logic_Low_Clock 134 
#define  NI_M_Series_Next_Gate_Clock 133 
#define  NI_M_Series_Next_TC_Clock 132 
 unsigned int const FUNC5 (unsigned int) ; 
#define  NI_M_Series_PXI10_Clock 131 
 unsigned int const FUNC6 (unsigned int) ; 
#define  NI_M_Series_Timebase_1_Clock 130 
#define  NI_M_Series_Timebase_2_Clock 129 
#define  NI_M_Series_Timebase_3_Clock 128 
 unsigned int ni_m_series_max_pfi_channel ; 
 unsigned int ni_m_series_max_rtsi_channel ; 
 unsigned int FUNC7 (struct ni_gpct const*) ; 
 unsigned int FUNC8 (struct ni_gpct const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned FUNC9(const struct ni_gpct *counter)
{
	struct ni_gpct_device *counter_dev = counter->counter_dev;
	const unsigned second_gate_reg =
	    FUNC2(counter->counter_index);
	unsigned clock_source = 0;
	unsigned i;
	const unsigned input_select = (FUNC8(counter,
							    FUNC1
							    (counter->counter_index))
				       & Gi_Source_Select_Mask) >>
	    Gi_Source_Select_Shift;

	switch (input_select) {
	case NI_M_Series_Timebase_1_Clock:
		clock_source = NI_GPCT_TIMEBASE_1_CLOCK_SRC_BITS;
		break;
	case NI_M_Series_Timebase_2_Clock:
		clock_source = NI_GPCT_TIMEBASE_2_CLOCK_SRC_BITS;
		break;
	case NI_M_Series_Timebase_3_Clock:
		if (counter_dev->regs[second_gate_reg] &
		    Gi_Source_Subselect_Bit)
			clock_source =
			    NI_GPCT_ANALOG_TRIGGER_OUT_CLOCK_SRC_BITS;
		else
			clock_source = NI_GPCT_TIMEBASE_3_CLOCK_SRC_BITS;
		break;
	case NI_M_Series_Logic_Low_Clock:
		clock_source = NI_GPCT_LOGIC_LOW_CLOCK_SRC_BITS;
		break;
	case NI_M_Series_Next_Gate_Clock:
		if (counter_dev->regs[second_gate_reg] &
		    Gi_Source_Subselect_Bit)
			clock_source = NI_GPCT_PXI_STAR_TRIGGER_CLOCK_SRC_BITS;
		else
			clock_source = NI_GPCT_NEXT_GATE_CLOCK_SRC_BITS;
		break;
	case NI_M_Series_PXI10_Clock:
		clock_source = NI_GPCT_PXI10_CLOCK_SRC_BITS;
		break;
	case NI_M_Series_Next_TC_Clock:
		clock_source = NI_GPCT_NEXT_TC_CLOCK_SRC_BITS;
		break;
	default:
		for (i = 0; i <= ni_m_series_max_rtsi_channel; ++i) {
			if (input_select == FUNC6(i)) {
				clock_source = FUNC4(i);
				break;
			}
		}
		if (i <= ni_m_series_max_rtsi_channel)
			break;
		for (i = 0; i <= ni_m_series_max_pfi_channel; ++i) {
			if (input_select == FUNC5(i)) {
				clock_source = FUNC3(i);
				break;
			}
		}
		if (i <= ni_m_series_max_pfi_channel)
			break;
		FUNC0();
		break;
	}
	clock_source |= FUNC7(counter);
	return clock_source;
}