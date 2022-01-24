#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* name; int /*<<< orphan*/  tst; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  singlestep_break_test ; 
 TYPE_1__ ts ; 

__attribute__((used)) static void FUNC3(void)
{
	FUNC0();
	ts.tst = singlestep_break_test;
	ts.name = "singlestep_breakpoint_test";
	/* Activate test with initial breakpoint */
	FUNC1();
	FUNC2();
	FUNC2();
}