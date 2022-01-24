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
typedef  int u8 ;
struct cx231xx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADC_PWRDN_CLAMP_CH2 ; 
 int FUNC0 (struct cx231xx*,int /*<<< orphan*/ ,int*) ; 
 int FUNC1 (struct cx231xx*,int /*<<< orphan*/ ,int) ; 

int FUNC2(struct cx231xx *dev)
{
	u8 c_value = 0;
	int status = 0;

	status = FUNC0(dev, ADC_PWRDN_CLAMP_CH2, &c_value);
	c_value &= (~(0x50));
	status = FUNC1(dev, ADC_PWRDN_CLAMP_CH2, c_value);

	return status;
}