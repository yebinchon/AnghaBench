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
struct nvme_queue {int dummy; } ;
struct nvme_ns {int dummy; } ;

/* Variables and functions */
 scalar_t__ CMD_CTX_FLUSH ; 
 int /*<<< orphan*/  NVME_IO_TIMEOUT ; 
 int FUNC0 (struct nvme_queue*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct nvme_queue*,struct nvme_ns*,int) ; 
 int /*<<< orphan*/  special_completion ; 
 scalar_t__ FUNC2 (int) ; 

int FUNC3(struct nvme_queue *nvmeq, struct nvme_ns *ns)
{
	int cmdid = FUNC0(nvmeq, (void *)CMD_CTX_FLUSH,
					special_completion, NVME_IO_TIMEOUT);
	if (FUNC2(cmdid < 0))
		return cmdid;

	return FUNC1(nvmeq, ns, cmdid);
}