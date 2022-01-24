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
struct nvme_queue {int /*<<< orphan*/  sq_full; } ;
typedef  int /*<<< orphan*/  nvme_completion_fn ;

/* Variables and functions */
 int EINTR ; 
 int FUNC0 (struct nvme_queue*,void*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct nvme_queue *nvmeq, void *ctx,
				nvme_completion_fn handler, unsigned timeout)
{
	int cmdid;
	FUNC1(nvmeq->sq_full,
		(cmdid = FUNC0(nvmeq, ctx, handler, timeout)) >= 0);
	return (cmdid < 0) ? -EINTR : cmdid;
}