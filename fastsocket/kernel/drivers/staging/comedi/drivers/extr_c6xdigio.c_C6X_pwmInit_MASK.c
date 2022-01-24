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
 int C6XDIGIO_TIME_OUT ; 
 int FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int) ; 

__attribute__((used)) static void FUNC2(unsigned long baseAddr)
{
	int timeout = 0;

/* printk("Inside C6X_pwmInit\n"); */

	FUNC1(baseAddr, 0x70);
	while (((FUNC0(baseAddr + 1) & 0x80) == 0)
	       && (timeout < C6XDIGIO_TIME_OUT)) {
		timeout++;
	}

	FUNC1(baseAddr, 0x74);
	timeout = 0;
	while (((FUNC0(baseAddr + 1) & 0x80) == 0x80)
	       && (timeout < C6XDIGIO_TIME_OUT)) {
		timeout++;
	}

	FUNC1(baseAddr, 0x70);
	timeout = 0;
	while (((FUNC0(baseAddr + 1) & 0x80) == 0x0)
	       && (timeout < C6XDIGIO_TIME_OUT)) {
		timeout++;
	}

	FUNC1(baseAddr, 0x0);
	timeout = 0;
	while (((FUNC0(baseAddr + 1) & 0x80) == 0x80)
	       && (timeout < C6XDIGIO_TIME_OUT)) {
		timeout++;
	}

}