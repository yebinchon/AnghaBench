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
struct sun4c_mmu_entry {int dummy; } ;

/* Variables and functions */
 unsigned long SUN4C_REAL_PGDIR_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct sun4c_mmu_entry*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  max_user_taken_entries ; 
 struct sun4c_mmu_entry* mmu_entry_pool ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 unsigned char FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct sun4c_mmu_entry*) ; 
 int /*<<< orphan*/  sun4c_ufree_ring ; 

__attribute__((used)) static void FUNC7(unsigned long addr)
{
	struct sun4c_mmu_entry *entry;
	unsigned long flags;
	unsigned char pseg;

	FUNC3(flags);
	addr &= SUN4C_REAL_PGDIR_MASK;
	pseg = FUNC5(addr);
	entry = &mmu_entry_pool[pseg];

	FUNC1();
	FUNC4(addr);
	FUNC6(entry);
	FUNC0(&sun4c_ufree_ring, entry);
	max_user_taken_entries++;
	FUNC2(flags);
}