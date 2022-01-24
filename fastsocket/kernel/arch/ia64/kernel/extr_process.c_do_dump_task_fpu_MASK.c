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
struct unw_frame_info {int dummy; } ;
struct TYPE_2__ {int flags; int /*<<< orphan*/  fph; } ;
struct task_struct {TYPE_1__ thread; } ;
typedef  int /*<<< orphan*/  elf_fpregset_t ;
typedef  int /*<<< orphan*/  elf_fpreg_t ;

/* Variables and functions */
 int IA64_THREAD_FPH_VALID ; 
 int /*<<< orphan*/  FUNC0 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct unw_frame_info*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct unw_frame_info*) ; 

void
FUNC5 (struct task_struct *task, struct unw_frame_info *info, void *arg)
{
	elf_fpreg_t *dst = arg;
	int i;

	FUNC2(dst, 0, sizeof(elf_fpregset_t));	/* don't leak any "random" bits */

	if (FUNC4(info) < 0)
		return;

	/* f0 is 0.0, f1 is 1.0 */

	for (i = 2; i < 32; ++i)
		FUNC3(info, i, dst + i);

	FUNC0(task);
	if ((task->thread.flags & IA64_THREAD_FPH_VALID) != 0)
		FUNC1(dst + 32, task->thread.fph, 96*16);
}