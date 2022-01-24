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
typedef  scalar_t__ u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  pmtmr_ioport ; 

void FUNC4(unsigned us)
{
	u32 a, b;
	a = FUNC3();
	do {
		b = FUNC2(pmtmr_ioport);
		FUNC0();
	} while (FUNC1(b - a) < us);
}