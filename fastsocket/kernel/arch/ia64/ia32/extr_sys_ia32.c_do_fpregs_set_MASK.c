#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct unw_frame_info {int /*<<< orphan*/  sw; } ;
struct TYPE_6__ {int fsr; } ;
struct task_struct {TYPE_3__ thread; } ;
struct TYPE_4__ {int /*<<< orphan*/  ubuf; int /*<<< orphan*/  kbuf; } ;
struct TYPE_5__ {TYPE_1__ set; } ;
struct regset_getset {scalar_t__ count; int pos; void* ret; TYPE_2__ u; struct task_struct* target; } ;
struct pt_regs {int dummy; } ;
struct ia32_user_i387_struct {int dummy; } ;
struct _fpreg_ia32 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,struct _fpreg_ia32*,struct pt_regs*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*,int,int) ; 
 struct pt_regs* FUNC2 (struct task_struct*) ; 
 scalar_t__ FUNC3 (struct unw_frame_info*) ; 
 void* FUNC4 (int*,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int,int) ; 

__attribute__((used)) static void FUNC5(struct unw_frame_info *info, void *arg)
{
	struct regset_getset *dst = arg;
	struct task_struct *task = dst->target;
	struct pt_regs *pt;
	char buf[80];
	int end, start, tos;

	if (dst->count == 0 || FUNC3(info) < 0)
		return;

	if (dst->pos < 7 * sizeof(int)) {
		start = dst->pos;
		dst->ret = FUNC4(&dst->pos, &dst->count,
				&dst->u.set.kbuf, &dst->u.set.ubuf, buf,
				0, 7 * sizeof(int));
		if (dst->ret)
			return;
		for (; start < dst->pos; start += sizeof(int))
			FUNC1(task, start, *((int *)(buf + start)));
		if (dst->count == 0)
			return;
	}
	if (dst->pos < sizeof(struct ia32_user_i387_struct)) {
		start = (dst->pos - 7 * sizeof(int)) /
			sizeof(struct _fpreg_ia32);
		dst->ret = FUNC4(&dst->pos, &dst->count,
				&dst->u.set.kbuf, &dst->u.set.ubuf,
				buf, 7 * sizeof(int),
				sizeof(struct ia32_user_i387_struct));
		if (dst->ret)
			return;
		pt = FUNC2(task);
		tos = (task->thread.fsr >> 11) & 7;
		end = (dst->pos - 7 * sizeof(int)) / sizeof(struct _fpreg_ia32);
		for (; start < end; start++)
			FUNC0(start,
				(struct _fpreg_ia32 *)buf + start,
				pt, info->sw, tos, 1);
		if (dst->count == 0)
			return;
	}
}