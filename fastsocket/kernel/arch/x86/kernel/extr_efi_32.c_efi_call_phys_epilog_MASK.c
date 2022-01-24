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
struct desc_ptr {unsigned long address; scalar_t__ size; } ;
struct TYPE_4__ {int /*<<< orphan*/  pgd; } ;
struct TYPE_3__ {int /*<<< orphan*/  pgd; } ;

/* Variables and functions */
 scalar_t__ GDT_SIZE ; 
 unsigned long X86_CR4_PAE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_2__* efi_bak_pg_dir_pointer ; 
 int /*<<< orphan*/  efi_rt_eflags ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct desc_ptr*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 size_t FUNC4 (int) ; 
 unsigned long FUNC5 () ; 
 TYPE_1__* swapper_pg_dir ; 

void FUNC6(void)
{
	unsigned long cr4;
	struct desc_ptr gdt_descr;

	gdt_descr.address = (unsigned long)FUNC1(0);
	gdt_descr.size = GDT_SIZE - 1;
	FUNC2(&gdt_descr);

	cr4 = FUNC5();

	if (cr4 & X86_CR4_PAE) {
		swapper_pg_dir[FUNC4(0)].pgd =
		    efi_bak_pg_dir_pointer[0].pgd;
	} else {
		swapper_pg_dir[FUNC4(0)].pgd =
		    efi_bak_pg_dir_pointer[0].pgd;
		swapper_pg_dir[FUNC4(0x400000)].pgd =
		    efi_bak_pg_dir_pointer[1].pgd;
	}

	/*
	 * After the lock is released, the original page table is restored.
	 */
	FUNC0();

	FUNC3(efi_rt_eflags);
}