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
typedef  unsigned long u64 ;
struct TYPE_2__ {unsigned long sp; } ;
struct task_struct {scalar_t__ state; TYPE_1__ thread; } ;

/* Variables and functions */
 scalar_t__ TASK_RUNNING ; 
 unsigned long THREAD_SIZE ; 
 struct task_struct* current ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 scalar_t__ FUNC1 (struct task_struct*) ; 

unsigned long FUNC2(struct task_struct *p)
{
	unsigned long stack;
	u64 fp, ip;
	int count = 0;

	if (!p || p == current || p->state == TASK_RUNNING)
		return 0;
	stack = (unsigned long)FUNC1(p);
	if (p->thread.sp < stack || p->thread.sp >= stack+THREAD_SIZE)
		return 0;
	fp = *(u64 *)(p->thread.sp);
	do {
		if (fp < (unsigned long)stack ||
		    fp >= (unsigned long)stack+THREAD_SIZE)
			return 0;
		ip = *(u64 *)(fp+8);
		if (!FUNC0(ip))
			return ip;
		fp = *(u64 *)fp;
	} while (count++ < 16);
	return 0;
}