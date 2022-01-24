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
struct task_struct {int /*<<< orphan*/  mm; } ;
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

pte_t *FUNC4(struct task_struct *task, unsigned long addr)
{
	pgd_t *pgd = FUNC0(task->mm, addr);
	pud_t *pud = FUNC3(pgd, addr);
	pmd_t *pmd = FUNC1(pud, addr);

	return FUNC2(pmd, addr);
}