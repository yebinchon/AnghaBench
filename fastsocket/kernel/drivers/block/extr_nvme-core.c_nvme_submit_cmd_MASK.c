#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  size_t u16 ;
struct nvme_queue {size_t sq_tail; size_t q_depth; int /*<<< orphan*/  q_lock; int /*<<< orphan*/  q_db; int /*<<< orphan*/ * sq_cmds; } ;
struct nvme_command {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct nvme_command*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct nvme_queue *nvmeq, struct nvme_command *cmd)
{
	unsigned long flags;
	u16 tail;
	FUNC1(&nvmeq->q_lock, flags);
	tail = nvmeq->sq_tail;
	FUNC0(&nvmeq->sq_cmds[tail], cmd, sizeof(*cmd));
	if (++tail == nvmeq->q_depth)
		tail = 0;
	FUNC3(tail, nvmeq->q_db);
	nvmeq->sq_tail = tail;
	FUNC2(&nvmeq->q_lock, flags);

	return 0;
}