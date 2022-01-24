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
 unsigned int VLEV ; 
 unsigned int FUNC0 () ; 
 unsigned int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 

__attribute__((used)) static void FUNC4(unsigned int vlev)
{
	unsigned pll_lcnt;

	pll_lcnt = FUNC0();

	FUNC2(1);
	FUNC3((FUNC1() & ~VLEV) | vlev);
	FUNC2(pll_lcnt);
}