#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct unw_frame_info {TYPE_4__* sw; } ;
struct TYPE_5__ {int fsr; } ;
struct task_struct {TYPE_1__ thread; } ;
struct TYPE_6__ {int /*<<< orphan*/  ubuf; int /*<<< orphan*/  kbuf; } ;
struct TYPE_7__ {TYPE_2__ get; } ;
struct regset_getset {scalar_t__ count; int pos; TYPE_3__ u; void* ret; struct task_struct* target; } ;
struct pt_regs {int dummy; } ;
struct TYPE_8__ {char f16; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,struct pt_regs*,TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*,int,int,char*) ; 
 int FUNC3 (scalar_t__,unsigned int) ; 
 int /*<<< orphan*/ * padding ; 
 int /*<<< orphan*/ * st_space ; 
 struct pt_regs* FUNC4 (struct task_struct*) ; 
 scalar_t__ FUNC5 (struct unw_frame_info*) ; 
 void* FUNC6 (int*,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/ * xmm_space ; 

__attribute__((used)) static void FUNC7(struct unw_frame_info *info, void *arg)
{
	struct regset_getset *dst = arg;
	struct task_struct *task = dst->target;
	struct pt_regs *pt;
	char buf[128];
	int start, end, tos;

	if (dst->count == 0 || FUNC5(info) < 0)
		return;
	if (dst->pos < FUNC0(st_space[0])) {
		end = FUNC3(dst->pos + dst->count, (unsigned int)32);
		FUNC2(task, dst->pos, end, buf);
		dst->ret = FUNC6(&dst->pos, &dst->count,
				&dst->u.get.kbuf, &dst->u.get.ubuf, buf,
				0, FUNC0(st_space[0]));
		if (dst->ret || dst->count == 0)
			return;
	}
	if (dst->pos < FUNC0(xmm_space[0])) {
		pt = FUNC4(task);
		tos = (task->thread.fsr >> 11) & 7;
		end = FUNC3(dst->pos + dst->count,
				(unsigned int)FUNC0(xmm_space[0]));
		start = (dst->pos - FUNC0(st_space[0])) / 16;
		end = (end - FUNC0(st_space[0])) / 16;
		for (; start < end; start++)
			FUNC1(start, buf + 16 * start, pt,
						info->sw, tos, 0);
		dst->ret = FUNC6(&dst->pos, &dst->count,
				&dst->u.get.kbuf, &dst->u.get.ubuf,
				buf, FUNC0(st_space[0]), FUNC0(xmm_space[0]));
		if (dst->ret || dst->count == 0)
			return;
	}
	if (dst->pos < FUNC0(padding[0]))
		dst->ret = FUNC6(&dst->pos, &dst->count,
				&dst->u.get.kbuf, &dst->u.get.ubuf,
				&info->sw->f16, FUNC0(xmm_space[0]),
				FUNC0(padding[0]));
}