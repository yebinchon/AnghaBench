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
struct ehca_comp_pool {int last_cpu; int /*<<< orphan*/  last_cpu_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  cpu_online_mask ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int ehca_debug_level ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int nr_cpu_ids ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline int FUNC8(struct ehca_comp_pool *pool)
{
	int cpu;
	unsigned long flags;

	FUNC0(!FUNC5());
	if (ehca_debug_level >= 3)
		FUNC4(cpu_online_mask, FUNC3(), "");

	FUNC6(&pool->last_cpu_lock, flags);
	cpu = FUNC2(pool->last_cpu, cpu_online_mask);
	if (cpu >= nr_cpu_ids)
		cpu = FUNC1(cpu_online_mask);
	pool->last_cpu = cpu;
	FUNC7(&pool->last_cpu_lock, flags);

	return cpu;
}