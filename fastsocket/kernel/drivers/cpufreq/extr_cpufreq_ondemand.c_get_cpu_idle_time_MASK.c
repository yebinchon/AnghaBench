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
typedef  unsigned long long u64 ;
typedef  unsigned long long cputime64_t ;

/* Variables and functions */
 unsigned long long FUNC0 (unsigned int,unsigned long long*) ; 
 unsigned long long FUNC1 (unsigned int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (unsigned int,unsigned long long*) ; 

__attribute__((used)) static inline cputime64_t FUNC3(unsigned int cpu, cputime64_t *wall)
{
	u64 idle_time = FUNC1(cpu, NULL);

	if (idle_time == -1ULL)
		return FUNC0(cpu, wall);
	else
		idle_time += FUNC2(cpu, wall);

	return idle_time;
}