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
 int /*<<< orphan*/  M32R_ICU_IMASK_PORTL ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpu_online_map ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 () ; 

__attribute__((used)) static void FUNC6(void *dummy)
{
	int cpu_id = FUNC5();

	/*
	 * Remove this CPU:
	 */
	FUNC0(cpu_id, cpu_online_map);

	/*
	 * PSW IE = 1;
	 * IMASK = 0;
	 * goto SLEEP
	 */
	FUNC2();
	FUNC4(0, M32R_ICU_IMASK_PORTL);
	FUNC1(M32R_ICU_IMASK_PORTL);	/* dummy read */
	FUNC3();

	for ( ; ; );
}