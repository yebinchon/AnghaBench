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
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  POWER_CSTATE ; 
 int /*<<< orphan*/  X86_FEATURE_CLFLUSH_MONITOR ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current_cpu_data ; 
 TYPE_1__* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(void)
{
	if (!FUNC6()) {
		FUNC9(POWER_CSTATE, 1, FUNC8());
		if (FUNC3(&current_cpu_data, X86_FEATURE_CLFLUSH_MONITOR))
			FUNC2((void *)&FUNC4()->flags);

		FUNC0((void *)&FUNC4()->flags, 0, 0);
		FUNC7();
		if (!FUNC6())
			FUNC1(0, 0);
		else
			FUNC5();
	} else
		FUNC5();
}