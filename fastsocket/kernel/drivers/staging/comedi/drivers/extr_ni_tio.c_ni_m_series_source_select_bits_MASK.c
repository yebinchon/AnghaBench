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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (unsigned int) ; 
#define  NI_GPCT_ANALOG_TRIGGER_OUT_CLOCK_SRC_BITS 136 
 unsigned int NI_GPCT_CLOCK_SRC_SELECT_MASK ; 
#define  NI_GPCT_LOGIC_LOW_CLOCK_SRC_BITS 135 
#define  NI_GPCT_NEXT_GATE_CLOCK_SRC_BITS 134 
#define  NI_GPCT_NEXT_TC_CLOCK_SRC_BITS 133 
 unsigned int const FUNC2 (unsigned int) ; 
#define  NI_GPCT_PXI10_CLOCK_SRC_BITS 132 
#define  NI_GPCT_PXI_STAR_TRIGGER_CLOCK_SRC_BITS 131 
 unsigned int const FUNC3 (unsigned int) ; 
#define  NI_GPCT_TIMEBASE_1_CLOCK_SRC_BITS 130 
#define  NI_GPCT_TIMEBASE_2_CLOCK_SRC_BITS 129 
#define  NI_GPCT_TIMEBASE_3_CLOCK_SRC_BITS 128 
 unsigned int NI_M_Series_Analog_Trigger_Out_Clock ; 
 unsigned int NI_M_Series_Logic_Low_Clock ; 
 unsigned int NI_M_Series_Next_Gate_Clock ; 
 unsigned int NI_M_Series_Next_TC_Clock ; 
 unsigned int FUNC4 (unsigned int) ; 
 unsigned int NI_M_Series_PXI10_Clock ; 
 unsigned int NI_M_Series_PXI_Star_Trigger_Clock ; 
 unsigned int FUNC5 (unsigned int) ; 
 unsigned int NI_M_Series_Timebase_1_Clock ; 
 unsigned int NI_M_Series_Timebase_2_Clock ; 
 unsigned int NI_M_Series_Timebase_3_Clock ; 
 unsigned int ni_m_series_max_pfi_channel ; 
 unsigned int ni_m_series_max_rtsi_channel ; 
 int /*<<< orphan*/  FUNC6 (char*,unsigned long) ; 

__attribute__((used)) static unsigned FUNC7(unsigned int clock_source)
{
	unsigned ni_m_series_clock;
	unsigned i;
	const unsigned clock_select_bits =
	    clock_source & NI_GPCT_CLOCK_SRC_SELECT_MASK;
	switch (clock_select_bits) {
	case NI_GPCT_TIMEBASE_1_CLOCK_SRC_BITS:
		ni_m_series_clock = NI_M_Series_Timebase_1_Clock;
		break;
	case NI_GPCT_TIMEBASE_2_CLOCK_SRC_BITS:
		ni_m_series_clock = NI_M_Series_Timebase_2_Clock;
		break;
	case NI_GPCT_TIMEBASE_3_CLOCK_SRC_BITS:
		ni_m_series_clock = NI_M_Series_Timebase_3_Clock;
		break;
	case NI_GPCT_LOGIC_LOW_CLOCK_SRC_BITS:
		ni_m_series_clock = NI_M_Series_Logic_Low_Clock;
		break;
	case NI_GPCT_NEXT_GATE_CLOCK_SRC_BITS:
		ni_m_series_clock = NI_M_Series_Next_Gate_Clock;
		break;
	case NI_GPCT_NEXT_TC_CLOCK_SRC_BITS:
		ni_m_series_clock = NI_M_Series_Next_TC_Clock;
		break;
	case NI_GPCT_PXI10_CLOCK_SRC_BITS:
		ni_m_series_clock = NI_M_Series_PXI10_Clock;
		break;
	case NI_GPCT_PXI_STAR_TRIGGER_CLOCK_SRC_BITS:
		ni_m_series_clock = NI_M_Series_PXI_Star_Trigger_Clock;
		break;
	case NI_GPCT_ANALOG_TRIGGER_OUT_CLOCK_SRC_BITS:
		ni_m_series_clock = NI_M_Series_Analog_Trigger_Out_Clock;
		break;
	default:
		for (i = 0; i <= ni_m_series_max_rtsi_channel; ++i) {
			if (clock_select_bits == FUNC3(i)) {
				ni_m_series_clock = FUNC5(i);
				break;
			}
		}
		if (i <= ni_m_series_max_rtsi_channel)
			break;
		for (i = 0; i <= ni_m_series_max_pfi_channel; ++i) {
			if (clock_select_bits == FUNC2(i)) {
				ni_m_series_clock = FUNC4(i);
				break;
			}
		}
		if (i <= ni_m_series_max_pfi_channel)
			break;
		FUNC6("invalid clock source 0x%lx\n",
		       (unsigned long)clock_source);
		FUNC0();
		ni_m_series_clock = 0;
		break;
	}
	return FUNC1(ni_m_series_clock);
}