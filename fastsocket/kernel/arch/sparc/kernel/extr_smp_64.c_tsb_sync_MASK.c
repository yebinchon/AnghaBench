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
struct trap_per_cpu {scalar_t__ pgd_paddr; } ;
struct mm_struct {int /*<<< orphan*/  pgd; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 () ; 
 struct trap_per_cpu* trap_block ; 
 int /*<<< orphan*/  FUNC2 (struct mm_struct*) ; 

__attribute__((used)) static void FUNC3(void *info)
{
	struct trap_per_cpu *tp = &trap_block[FUNC1()];
	struct mm_struct *mm = info;

	/* It is not valid to test "currrent->active_mm == mm" here.
	 *
	 * The value of "current" is not changed atomically with
	 * switch_mm().  But that's OK, we just need to check the
	 * current cpu's trap block PGD physical address.
	 */
	if (tp->pgd_paddr == FUNC0(mm->pgd))
		FUNC2(mm);
}