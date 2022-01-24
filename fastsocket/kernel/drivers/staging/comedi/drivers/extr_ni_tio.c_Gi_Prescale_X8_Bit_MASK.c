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
typedef  enum ni_gpct_variant { ____Placeholder_ni_gpct_variant } ni_gpct_variant ;
typedef  enum Gi_Counting_Mode_Reg_Bits { ____Placeholder_Gi_Counting_Mode_Reg_Bits } Gi_Counting_Mode_Reg_Bits ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int Gi_660x_Prescale_X8_Bit ; 
 int Gi_M_Series_Prescale_X8_Bit ; 
#define  ni_gpct_variant_660x 130 
#define  ni_gpct_variant_e_series 129 
#define  ni_gpct_variant_m_series 128 

__attribute__((used)) static inline enum Gi_Counting_Mode_Reg_Bits FUNC1(enum
								ni_gpct_variant
								variant)
{
	switch (variant) {
	case ni_gpct_variant_e_series:
		return 0;
		break;
	case ni_gpct_variant_m_series:
		return Gi_M_Series_Prescale_X8_Bit;
		break;
	case ni_gpct_variant_660x:
		return Gi_660x_Prescale_X8_Bit;
		break;
	default:
		FUNC0();
		break;
	}
	return 0;
}