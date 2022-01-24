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
typedef  int /*<<< orphan*/  atomic_t ;

/* Variables and functions */
 int /*<<< orphan*/  INVALIDATE_CACHE_IPI ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpu_online_map ; 
 unsigned long* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ flushcache_cpumask ; 
 int /*<<< orphan*/  flushcache_lock ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

void FUNC11(void)
{
	cpumask_t cpumask;
	unsigned long *mask;

	FUNC5();
	cpumask = cpu_online_map;
	FUNC2(FUNC8(), cpumask);
	FUNC9(&flushcache_lock);
	mask=FUNC3(cpumask);
	FUNC1(*mask, (atomic_t *)&flushcache_cpumask);
	FUNC7(&cpumask, INVALIDATE_CACHE_IPI, 0);
	FUNC0();
	while (flushcache_cpumask)
		FUNC4();
	FUNC10(&flushcache_lock);
	FUNC6();
}