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
typedef  int u32 ;
struct hwicap_drvdata {scalar_t__ base_address; } ;

/* Variables and functions */
 scalar_t__ XHI_CR_OFFSET ; 
 int XHI_CR_SW_RESET_MASK ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 

void FUNC2(struct hwicap_drvdata *drvdata)
{
	u32 reg_data;
	/*
	 * Reset the device by setting/clearing the RESET bit in the
	 * Control Register.
	 */
	reg_data = FUNC0(drvdata->base_address + XHI_CR_OFFSET);

	FUNC1(drvdata->base_address + XHI_CR_OFFSET,
				reg_data | XHI_CR_SW_RESET_MASK);

	FUNC1(drvdata->base_address + XHI_CR_OFFSET,
				reg_data & (~XHI_CR_SW_RESET_MASK));

}