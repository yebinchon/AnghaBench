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
 unsigned long long TCLK2NS_SCALE_FACTOR ; 
 int /*<<< orphan*/  TIMER0_VAL ; 
 unsigned long long FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long long tclk2ns_scale ; 

unsigned long long FUNC2(void)
{
	unsigned long long v = FUNC0(0xffffffff - FUNC1(TIMER0_VAL));
	return (v * tclk2ns_scale) >> TCLK2NS_SCALE_FACTOR;
}