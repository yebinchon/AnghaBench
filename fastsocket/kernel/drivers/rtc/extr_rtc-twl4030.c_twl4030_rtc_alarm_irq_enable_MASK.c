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
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIT_RTC_INTERRUPTS_REG_IT_ALARM_M ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct device *dev, unsigned enabled)
{
	int ret;

	if (enabled)
		ret = FUNC1(BIT_RTC_INTERRUPTS_REG_IT_ALARM_M);
	else
		ret = FUNC0(BIT_RTC_INTERRUPTS_REG_IT_ALARM_M);

	return ret;
}