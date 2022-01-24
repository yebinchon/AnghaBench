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
typedef  enum ni_gpct_register { ____Placeholder_ni_gpct_register } ni_gpct_register ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int NITIO_G0_Input_Select_Reg ; 
 int NITIO_G1_Input_Select_Reg ; 
 int NITIO_G2_Input_Select_Reg ; 
 int NITIO_G3_Input_Select_Reg ; 

__attribute__((used)) static inline enum ni_gpct_register FUNC1(unsigned
							      counter_index)
{
	switch (counter_index) {
	case 0:
		return NITIO_G0_Input_Select_Reg;
		break;
	case 1:
		return NITIO_G1_Input_Select_Reg;
		break;
	case 2:
		return NITIO_G2_Input_Select_Reg;
		break;
	case 3:
		return NITIO_G3_Input_Select_Reg;
		break;
	default:
		FUNC0();
		break;
	}
	return 0;
}