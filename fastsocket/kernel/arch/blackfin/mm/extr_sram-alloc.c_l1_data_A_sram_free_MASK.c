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
 int FUNC0 (void const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  free_l1_data_A_sram_head ; 
 unsigned int FUNC1 () ; 
 int /*<<< orphan*/  l1_data_sram_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  used_l1_data_A_sram_head ; 

int FUNC6(const void *addr)
{
#if L1_DATA_A_LENGTH != 0
	unsigned long flags;
	int ret;
	unsigned int cpu;

	cpu = get_cpu();
	/* add mutex operation */
	spin_lock_irqsave(&per_cpu(l1_data_sram_lock, cpu), flags);

	ret = _sram_free(addr, &per_cpu(free_l1_data_A_sram_head, cpu),
			&per_cpu(used_l1_data_A_sram_head, cpu));

	/* add mutex operation */
	spin_unlock_irqrestore(&per_cpu(l1_data_sram_lock, cpu), flags);
	put_cpu();

	return ret;
#else
	return -1;
#endif
}