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
 int /*<<< orphan*/  backside_state ; 
 int /*<<< orphan*/ * cpu_state ; 
 int /*<<< orphan*/  dimms_state ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  drives_state ; 
 int /*<<< orphan*/  slots_state ; 

__attribute__((used)) static void FUNC5(void)
{
	FUNC1(&cpu_state[0]);
	FUNC1(&cpu_state[1]);
	FUNC0(&backside_state);
	FUNC3(&drives_state);
	FUNC4(&slots_state);
	FUNC2(&dimms_state);
}