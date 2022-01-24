#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mm_struct {int dummy; } ;
struct flush_tlb_page_struct {int /*<<< orphan*/  addr; int /*<<< orphan*/  vma; struct mm_struct* mm; } ;
struct TYPE_2__ {struct mm_struct* active_mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC1 (struct mm_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mm_struct*) ; 

__attribute__((used)) static void
FUNC3(void *x)
{
	struct flush_tlb_page_struct *data = (struct flush_tlb_page_struct *)x;
	struct mm_struct * mm = data->mm;

	if (mm == current->active_mm && !FUNC0())
		FUNC1(mm, data->vma, data->addr);
	else
		FUNC2(mm);
}