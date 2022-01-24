#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct desc_ptr {scalar_t__ size; int /*<<< orphan*/  address; } ;
struct TYPE_4__ {int /*<<< orphan*/  pgd; } ;
struct TYPE_3__ {int /*<<< orphan*/  pgd; } ;

/* Variables and functions */
 scalar_t__ GDT_SIZE ; 
 int PAGE_OFFSET ; 
 unsigned long X86_CR4_PAE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* efi_bak_pg_dir_pointer ; 
 int /*<<< orphan*/  efi_rt_eflags ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct desc_ptr*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 size_t FUNC5 (unsigned long) ; 
 unsigned long FUNC6 () ; 
 TYPE_1__* swapper_pg_dir ; 

void FUNC7(void)
{
	unsigned long cr4;
	unsigned long temp;
	struct desc_ptr gdt_descr;

	FUNC4(efi_rt_eflags);

	/*
	 * If I don't have PAE, I should just duplicate two entries in page
	 * directory. If I have PAE, I just need to duplicate one entry in
	 * page directory.
	 */
	cr4 = FUNC6();

	if (cr4 & X86_CR4_PAE) {
		efi_bak_pg_dir_pointer[0].pgd =
		    swapper_pg_dir[FUNC5(0)].pgd;
		swapper_pg_dir[0].pgd =
		    swapper_pg_dir[FUNC5(PAGE_OFFSET)].pgd;
	} else {
		efi_bak_pg_dir_pointer[0].pgd =
		    swapper_pg_dir[FUNC5(0)].pgd;
		efi_bak_pg_dir_pointer[1].pgd =
		    swapper_pg_dir[FUNC5(0x400000)].pgd;
		swapper_pg_dir[FUNC5(0)].pgd =
		    swapper_pg_dir[FUNC5(PAGE_OFFSET)].pgd;
		temp = PAGE_OFFSET + 0x400000;
		swapper_pg_dir[FUNC5(0x400000)].pgd =
		    swapper_pg_dir[FUNC5(temp)].pgd;
	}

	/*
	 * After the lock is released, the original page table is restored.
	 */
	FUNC0();

	gdt_descr.address = FUNC1(FUNC2(0));
	gdt_descr.size = GDT_SIZE - 1;
	FUNC3(&gdt_descr);
}