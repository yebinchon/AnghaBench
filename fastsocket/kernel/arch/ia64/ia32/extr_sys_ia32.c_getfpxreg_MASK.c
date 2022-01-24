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
struct TYPE_2__ {int fcr; int fsr; int fir; int fdr; } ;
struct task_struct {TYPE_1__ thread; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cwd ; 
 int /*<<< orphan*/  fcs ; 
 int /*<<< orphan*/  fip ; 
 int /*<<< orphan*/  foo ; 
 int /*<<< orphan*/  fop ; 
 int /*<<< orphan*/  fos ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  mxcsr ; 
 int /*<<< orphan*/  swd ; 
 int /*<<< orphan*/  twd ; 

__attribute__((used)) static void FUNC2(struct task_struct *task, int start, int end, char *buf)
{
	int min_val;

	min_val = FUNC1(end, FUNC0(fop));
	while (start < min_val) {
		if (start == FUNC0(cwd))
			*((short *)buf) = task->thread.fcr & 0xffff;
		else if (start == FUNC0(swd))
			*((short *)buf) = task->thread.fsr & 0xffff;
		else if (start == FUNC0(twd))
			*((short *)buf) = (task->thread.fsr>>16) & 0xffff;
		buf += 2;
		start += 2;
	}
	/* skip fop element */
	if (start == FUNC0(fop)) {
		start += 2;
		buf += 2;
	}
	while (start < end) {
		if (start == FUNC0(fip))
			*((int *)buf) = task->thread.fir;
		else if (start == FUNC0(fcs))
			*((int *)buf) = (task->thread.fir>>32) & 0xffff;
		else if (start == FUNC0(foo))
			*((int *)buf) = task->thread.fdr;
		else if (start == FUNC0(fos))
			*((int *)buf) = (task->thread.fdr>>32) & 0xffff;
		else if (start == FUNC0(mxcsr))
			*((int *)buf) = ((task->thread.fcr>>32) & 0xff80)
					 | ((task->thread.fsr>>32) & 0x3f);
		buf += 4;
		start += 4;
	}
}