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
struct sun4c_mmu_entry {unsigned long vaddr; } ;

/* Variables and functions */
 unsigned long SUN4C_REAL_PGDIR_MASK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  max_user_taken_entries ; 
 int /*<<< orphan*/  FUNC3 (struct sun4c_mmu_entry*) ; 
 struct sun4c_mmu_entry* FUNC4 () ; 

__attribute__((used)) static void FUNC5(unsigned long addr)
{
	struct sun4c_mmu_entry *stolen;
	unsigned long flags;

	FUNC2(flags);
	addr &= SUN4C_REAL_PGDIR_MASK;
	stolen = FUNC4();
	max_user_taken_entries--;
	stolen->vaddr = addr;
	FUNC0();
	FUNC3(stolen);
	FUNC1(flags);
}