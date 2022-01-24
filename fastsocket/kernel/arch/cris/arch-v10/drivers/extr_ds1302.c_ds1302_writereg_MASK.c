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
 int RTC_TRICKLECHARGER ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned char) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

void
FUNC5(int reg, unsigned char val) 
{
#ifndef CONFIG_ETRAX_RTC_READONLY
	int do_writereg = 1;
#else
	int do_writereg = 0;

	if (reg == RTC_TRICKLECHARGER)
		do_writereg = 1;
#endif

	if (do_writereg) {
		FUNC1();
		FUNC3();
		FUNC2(0x80 | (reg << 1)); /* write register */
		FUNC2(val);
		FUNC4();
		FUNC0();
	}
}