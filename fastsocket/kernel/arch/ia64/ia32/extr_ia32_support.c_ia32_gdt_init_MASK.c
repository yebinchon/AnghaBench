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
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * cpu_gdt_table ; 
 int /*<<< orphan*/  ia32_boot_gdt ; 
 int /*<<< orphan*/ * ia32_shared_page ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int FUNC4 () ; 

void
FUNC5 (void)
{
	int cpu = FUNC4();

	ia32_shared_page[cpu] = FUNC0(GFP_KERNEL);
	if (!ia32_shared_page[cpu])
		FUNC3("failed to allocate ia32_shared_page[%d]\n", cpu);

	cpu_gdt_table[cpu] = FUNC2(ia32_shared_page[cpu]);

	/* Copy from the boot cpu's GDT */
	FUNC1(cpu_gdt_table[cpu], ia32_boot_gdt, PAGE_SIZE);
}