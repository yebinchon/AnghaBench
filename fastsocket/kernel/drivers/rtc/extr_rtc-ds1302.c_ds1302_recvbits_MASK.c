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
 int RTC_IODATA ; 
 int RTC_SCLK ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static unsigned int FUNC2(void)
{
	unsigned int val;
	int i;

	for (i = 0, val = 0; (i < 8); i++) {
		val |= (((FUNC0() & RTC_IODATA) ? 1 : 0) << i);
		FUNC1(FUNC0() | RTC_SCLK);	/* clock high */
		FUNC1(FUNC0() & ~RTC_SCLK);	/* clock low */
	}

	return val;
}