#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pt_regs {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  lock; } ;
struct mm_struct {TYPE_2__ context; } ;
struct TYPE_4__ {struct mm_struct* active_mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__) ; 
 int /*<<< orphan*/  SECONDARY_CONTEXT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC4 (struct mm_struct*) ; 
 struct mm_struct init_mm ; 
 int /*<<< orphan*/  FUNC5 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC8 (int) ; 

void FUNC9(int irq, struct pt_regs *regs)
{
	struct mm_struct *mm;
	unsigned long flags;

	FUNC3(1 << irq);

	/* See if we need to allocate a new TLB context because
	 * the version of the one we are using is now out of date.
	 */
	mm = current->active_mm;
	if (FUNC8(!mm || (mm == &init_mm)))
		return;

	FUNC6(&mm->context.lock, flags);

	if (FUNC8(!FUNC1(mm->context)))
		FUNC4(mm);

	FUNC7(&mm->context.lock, flags);

	FUNC5(mm);
	FUNC2(FUNC0(mm->context),
		       SECONDARY_CONTEXT);
}