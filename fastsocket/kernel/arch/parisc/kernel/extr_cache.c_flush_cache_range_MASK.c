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
struct vm_area_struct {TYPE_1__* vm_mm; } ;
struct TYPE_2__ {int context; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,unsigned long) ; 
 int FUNC4 (int) ; 

void FUNC5(struct vm_area_struct *vma,
		unsigned long start, unsigned long end)
{
	int sr3;

	FUNC0(!vma->vm_mm->context);

	sr3 = FUNC4(3);
	if (vma->vm_mm->context == sr3) {
		FUNC2(start,end);
		FUNC3(start,end);
	} else {
		FUNC1();
	}
}