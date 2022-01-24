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
 int /*<<< orphan*/  CONF_CM_CMASK ; 
 int /*<<< orphan*/  CONF_CM_UNCACHED ; 
 int ST0_BEV ; 
 int ST0_ERL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(char *command)
{
	/*
	 * Ouch, we're still alive ... This time we take the silver bullet ...
	 * ... and find that we leave the hardware in a state in which the
	 * kernel in the flush locks up somewhen during of after the PCI
	 * detection stuff.
	 */
	FUNC2();
	FUNC3(ST0_BEV | ST0_ERL);
	FUNC0(CONF_CM_CMASK, CONF_CM_UNCACHED);
	FUNC1();
	FUNC4(0);
	__asm__ __volatile__("jr\t%0"::"r"(0xbfc00000));
}