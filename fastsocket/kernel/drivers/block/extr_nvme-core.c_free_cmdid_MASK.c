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
struct nvme_queue {int q_depth; int /*<<< orphan*/  sq_full; int /*<<< orphan*/  cmdid_data; } ;
struct nvme_cmd_info {void* ctx; void* fn; } ;
typedef  void* nvme_completion_fn ;

/* Variables and functions */
 void* CMD_CTX_COMPLETED ; 
 void* CMD_CTX_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 struct nvme_cmd_info* FUNC1 (struct nvme_queue*) ; 
 void* special_completion ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void *FUNC3(struct nvme_queue *nvmeq, int cmdid,
						nvme_completion_fn *fn)
{
	void *ctx;
	struct nvme_cmd_info *info = FUNC1(nvmeq);

	if (cmdid >= nvmeq->q_depth) {
		*fn = special_completion;
		return CMD_CTX_INVALID;
	}
	if (fn)
		*fn = info[cmdid].fn;
	ctx = info[cmdid].ctx;
	info[cmdid].fn = special_completion;
	info[cmdid].ctx = CMD_CTX_COMPLETED;
	FUNC0(cmdid, nvmeq->cmdid_data);
	FUNC2(&nvmeq->sq_full);
	return ctx;
}