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
 int /*<<< orphan*/  REG_RTC_INTERRUPTS_REG ; 
 unsigned char rtc_irq_bits ; 
 int FUNC0 (unsigned char,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(unsigned char bit)
{
	unsigned char val;
	int ret;

	val = rtc_irq_bits & ~bit;
	ret = FUNC0(val, REG_RTC_INTERRUPTS_REG);
	if (ret == 0)
		rtc_irq_bits = val;

	return ret;
}