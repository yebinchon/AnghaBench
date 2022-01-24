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
 int IA32_GATE_END ; 
 int IA32_LDT_ENTRIES ; 
 int IA32_LDT_ENTRY_SIZE ; 
 int /*<<< orphan*/  IA32_LDT_OFFSET ; 
 int IA32_PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  IA32_TSS_OFFSET ; 
 size_t LDT_ENTRY ; 
 unsigned long FUNC1 (int) ; 
 size_t TSS_ENTRY ; 
 int __USER_CS ; 
 int __USER_DS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** cpu_gdt_table ; 
 int /*<<< orphan*/ * ia32_boot_gdt ; 
 int /*<<< orphan*/ * ia32_shared_page ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void
FUNC5 (void)
{
	unsigned long ldt_size;

	ia32_shared_page[0] = FUNC2(GFP_KERNEL);
	if (!ia32_shared_page[0])
		FUNC4("failed to allocate ia32_shared_page[0]\n");

	ia32_boot_gdt = FUNC3(ia32_shared_page[0]);
	cpu_gdt_table[0] = ia32_boot_gdt;

	/* CS descriptor in IA-32 (scrambled) format */
	ia32_boot_gdt[__USER_CS >> 3]
		= FUNC0(0, (IA32_GATE_END-1) >> IA32_PAGE_SHIFT,
				      0xb, 1, 3, 1, 1, 1, 1);

	/* DS descriptor in IA-32 (scrambled) format */
	ia32_boot_gdt[__USER_DS >> 3]
		= FUNC0(0, (IA32_GATE_END-1) >> IA32_PAGE_SHIFT,
				      0x3, 1, 3, 1, 1, 1, 1);

	ldt_size = FUNC1(IA32_LDT_ENTRIES*IA32_LDT_ENTRY_SIZE);
	ia32_boot_gdt[TSS_ENTRY] = FUNC0(IA32_TSS_OFFSET, 235,
						       0xb, 0, 3, 1, 1, 1, 0);
	ia32_boot_gdt[LDT_ENTRY] = FUNC0(IA32_LDT_OFFSET, ldt_size - 1,
						       0x2, 0, 3, 1, 1, 1, 0);
}