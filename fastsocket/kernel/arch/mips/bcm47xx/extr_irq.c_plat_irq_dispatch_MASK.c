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
typedef  int u32 ;

/* Variables and functions */
 int CAUSEF_IP ; 
 int CAUSEF_IP2 ; 
 int CAUSEF_IP3 ; 
 int CAUSEF_IP4 ; 
 int CAUSEF_IP5 ; 
 int CAUSEF_IP6 ; 
 int CAUSEF_IP7 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 () ; 
 int FUNC3 () ; 

void FUNC4(void)
{
	u32 cause;

	cause = FUNC2() & FUNC3() & CAUSEF_IP;

	FUNC0(cause);

	if (cause & CAUSEF_IP7)
		FUNC1(7);
	if (cause & CAUSEF_IP2)
		FUNC1(2);
	if (cause & CAUSEF_IP3)
		FUNC1(3);
	if (cause & CAUSEF_IP4)
		FUNC1(4);
	if (cause & CAUSEF_IP5)
		FUNC1(5);
	if (cause & CAUSEF_IP6)
		FUNC1(6);
}