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
 void* FUNC0 (size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  free_l1_data_B_sram_head ; 
 unsigned int FUNC1 () ; 
 int /*<<< orphan*/  l1_data_sram_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned long,size_t) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  used_l1_data_B_sram_head ; 

void *FUNC7(size_t size)
{
#if L1_DATA_B_LENGTH != 0
	unsigned long flags;
	void *addr;
	unsigned int cpu;

	cpu = get_cpu();
	/* add mutex operation */
	spin_lock_irqsave(&per_cpu(l1_data_sram_lock, cpu), flags);

	addr = _sram_alloc(size, &per_cpu(free_l1_data_B_sram_head, cpu),
			&per_cpu(used_l1_data_B_sram_head, cpu));

	/* add mutex operation */
	spin_unlock_irqrestore(&per_cpu(l1_data_sram_lock, cpu), flags);
	put_cpu();

	pr_debug("Allocated address in l1_data_B_sram_alloc is 0x%lx+0x%lx\n",
		 (long unsigned int)addr, size);

	return addr;
#else
	return NULL;
#endif
}