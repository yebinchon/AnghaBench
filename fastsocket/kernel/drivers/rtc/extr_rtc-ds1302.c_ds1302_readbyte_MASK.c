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
 unsigned int RTC_CMD_READ ; 
 int RTC_IODATA ; 
 int RTC_RESET ; 
 int RTC_SCLK ; 
 unsigned int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static unsigned int FUNC4(unsigned int addr)
{
	unsigned int val;

	FUNC3(FUNC2() & ~(RTC_RESET | RTC_IODATA | RTC_SCLK));

	FUNC3(FUNC2() | RTC_RESET);
	FUNC1(((addr & 0x3f) << 1) | RTC_CMD_READ);
	val = FUNC0();
	FUNC3(FUNC2() & ~RTC_RESET);

	return val;
}