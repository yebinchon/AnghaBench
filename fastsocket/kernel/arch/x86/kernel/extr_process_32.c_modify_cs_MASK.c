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
struct TYPE_3__ {unsigned long exec_limit; int /*<<< orphan*/  user_cs; } ;
struct mm_struct {TYPE_1__ context; } ;
struct TYPE_4__ {struct mm_struct* mm; } ;

/* Variables and functions */
 TYPE_2__* current ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct mm_struct *mm, unsigned long limit)
{
	mm->context.exec_limit = limit;
	FUNC3(&mm->context.user_cs, limit);
	if (mm == current->mm) {
		int cpu;

		cpu = FUNC0();
		FUNC1(cpu, mm);
		FUNC2();
	}
}