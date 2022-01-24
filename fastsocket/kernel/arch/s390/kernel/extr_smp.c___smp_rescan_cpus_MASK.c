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
typedef  int /*<<< orphan*/  cpumask_t ;

/* Variables and functions */
 int /*<<< orphan*/  cpu_possible_map ; 
 int /*<<< orphan*/  cpu_present_map ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ smp_use_sigp_detection ; 

__attribute__((used)) static int FUNC3(void)
{
	cpumask_t avail;

	FUNC0(avail, cpu_possible_map, cpu_present_map);
	if (smp_use_sigp_detection)
		return FUNC2(avail);
	else
		return FUNC1(avail);
}