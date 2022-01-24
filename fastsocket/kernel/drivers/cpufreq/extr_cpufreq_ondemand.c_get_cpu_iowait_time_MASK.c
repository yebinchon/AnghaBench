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

__attribute__((used)) static inline cputime64_t FUNC1(unsigned int cpu, cputime64_t *wall)
{
	u64 iowait_time = FUNC0(cpu, wall);

	if (iowait_time == -1ULL)
		return 0;

	return iowait_time;
}