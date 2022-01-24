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
struct TYPE_4__ {TYPE_1__* mm; } ;
struct TYPE_3__ {unsigned long start_brk; unsigned long brk; int /*<<< orphan*/  mmap_sem; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned long) ; 
 unsigned long FUNC1 (unsigned long) ; 
 TYPE_2__* current ; 
 unsigned long FUNC2 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(unsigned long start, unsigned long end)
{
	start = FUNC1(start);
	end = FUNC1(end);
	if (end > start) {
		unsigned long addr;
		FUNC3(&current->mm->mmap_sem);
		addr = FUNC2(start, end - start);
		FUNC4(&current->mm->mmap_sem);
		if (FUNC0(addr))
			return addr;
	}
	current->mm->start_brk = current->mm->brk = end;
	return 0;
}