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
 int /*<<< orphan*/  R4600_HIT_CACHEOP_WAR_IMPL ; 
 int /*<<< orphan*/  cpu_has_ic_fills_f_dc ; 
 unsigned long dcache_size ; 
 unsigned long icache_size ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static inline void FUNC4(unsigned long start, unsigned long end)
{
	if (!cpu_has_ic_fills_f_dc) {
		if (end - start >= dcache_size) {
			FUNC2();
		} else {
			R4600_HIT_CACHEOP_WAR_IMPL;
			FUNC0(start, end);
		}
	}

	if (end - start > icache_size)
		FUNC3();
	else
		FUNC1(start, end);
}