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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  EXP_1 ; 
 int /*<<< orphan*/  EXP_15 ; 
 int /*<<< orphan*/  EXP_5 ; 
 unsigned long FIXED_1 ; 
 unsigned long FUNC1 () ; 
 int /*<<< orphan*/ * spu_avenrun ; 

__attribute__((used)) static void FUNC2(void)
{
	unsigned long active_tasks; /* fixed-point */

	active_tasks = FUNC1() * FIXED_1;
	FUNC0(spu_avenrun[0], EXP_1, active_tasks);
	FUNC0(spu_avenrun[1], EXP_5, active_tasks);
	FUNC0(spu_avenrun[2], EXP_15, active_tasks);
}