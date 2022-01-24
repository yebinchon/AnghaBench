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
 unsigned int CSC_CLKSET ; 
 int FUNC0 (unsigned int) ; 
 int FUNC1 (unsigned int) ; 
 int FUNC2 (unsigned int) ; 
 int FUNC3 (unsigned int) ; 
 int XTAL_IN ; 

unsigned int FUNC4 (void)
{
	unsigned int clkset = CSC_CLKSET;
	unsigned int gclk
		= XTAL_IN
		/ (1 << FUNC3(clkset))
		* (FUNC0(clkset) + 2)
		/ (FUNC2(clkset)   + 2)
		* (FUNC1(clkset) + 2)
		;
	return gclk;
}