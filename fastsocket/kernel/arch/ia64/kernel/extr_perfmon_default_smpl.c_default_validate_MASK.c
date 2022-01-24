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
struct task_struct {int dummy; } ;
struct TYPE_2__ {scalar_t__ buf_size; } ;
typedef  TYPE_1__ pfm_default_smpl_arg_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 scalar_t__ PFM_DEFAULT_SMPL_MIN_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*) ; 

__attribute__((used)) static int
FUNC2(struct task_struct *task, unsigned int flags, int cpu, void *data)
{
	pfm_default_smpl_arg_t *arg = (pfm_default_smpl_arg_t*)data;
	int ret = 0;

	if (data == NULL) {
		FUNC0(("[%d] no argument passed\n", FUNC1(task)));
		return -EINVAL;
	}

	FUNC0(("[%d] validate flags=0x%x CPU%d\n", FUNC1(task), flags, cpu));

	/*
	 * must hold at least the buffer header + one minimally sized entry
	 */
	if (arg->buf_size < PFM_DEFAULT_SMPL_MIN_BUF_SIZE) return -EINVAL;

	FUNC0(("buf_size=%lu\n", arg->buf_size));

	return ret;
}