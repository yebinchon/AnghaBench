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
 unsigned int RTC_CMD_WRITE ; 
 int RTC_IODATA ; 
 int RTC_RESET ; 
 int RTC_SCLK ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(unsigned int addr, unsigned int val)
{
	FUNC2(FUNC1() & ~(RTC_RESET | RTC_IODATA | RTC_SCLK));
	FUNC2(FUNC1() | RTC_RESET);
	FUNC0(((addr & 0x3f) << 1) | RTC_CMD_WRITE);
	FUNC0(val);
	FUNC2(FUNC1() & ~RTC_RESET);
}