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
typedef  scalar_t__ u8 ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  APIC_DFR ; 
 int /*<<< orphan*/  APIC_LDR ; 
 unsigned long APIC_LDR_MASK ; 
 scalar_t__ BAD_APICID ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 unsigned long FUNC2 (unsigned long) ; 
 unsigned long SUMMIT_APIC_DFR_VALUE ; 
 int XAPIC_DEST_CPUS_SHIFT ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__* cpu_2_logical_apicid ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int nr_cpu_ids ; 

__attribute__((used)) static void FUNC6(void)
{
	unsigned long val, id;
	int count = 0;
	u8 my_id = (u8)FUNC5();
	u8 my_cluster = FUNC0(my_id);
#ifdef CONFIG_SMP
	u8 lid;
	int i;

	/* Create logical APIC IDs by counting CPUs already in cluster. */
	for (count = 0, i = nr_cpu_ids; --i >= 0; ) {
		lid = cpu_2_logical_apicid[i];
		if (lid != BAD_APICID && APIC_CLUSTER(lid) == my_cluster)
			++count;
	}
#endif
	/* We only have a 4 wide bitmap in cluster mode.  If a deranged
	 * BIOS puts 5 CPUs in one APIC cluster, we're hosed. */
	FUNC1(count >= XAPIC_DEST_CPUS_SHIFT);
	id = my_cluster | (1UL << count);
	FUNC4(APIC_DFR, SUMMIT_APIC_DFR_VALUE);
	val = FUNC3(APIC_LDR) & ~APIC_LDR_MASK;
	val |= FUNC2(id);
	FUNC4(APIC_LDR, val);
}