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
struct TYPE_2__ {unsigned int id; } ;
struct mm_struct {TYPE_1__ context; } ;

/* Variables and functions */
 unsigned int MMU_NO_CONTEXT ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,unsigned int,int,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

void FUNC3(struct mm_struct *mm, unsigned long vmaddr,
			    int tsize, int ind)
{
	unsigned int pid;

	FUNC1();
	pid = mm ? mm->context.id : 0;
	if (pid != MMU_NO_CONTEXT)
		FUNC0(vmaddr, pid, tsize, ind);
	FUNC2();
}