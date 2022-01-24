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
typedef  int u16 ;
struct nvme_queue {int q_depth; int /*<<< orphan*/  sq_dma_addr; } ;
struct nvme_dev {int dummy; } ;
struct TYPE_2__ {void* cqid; void* sq_flags; void* qsize; void* sqid; int /*<<< orphan*/  prp1; int /*<<< orphan*/  opcode; } ;
struct nvme_command {TYPE_1__ create_sq; } ;
typedef  int /*<<< orphan*/  c ;

/* Variables and functions */
 int EIO ; 
 int NVME_QUEUE_PHYS_CONTIG ; 
 int NVME_SQ_PRIO_MEDIUM ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nvme_command*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  nvme_admin_create_sq ; 
 int FUNC3 (struct nvme_dev*,struct nvme_command*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct nvme_dev *dev, u16 qid,
						struct nvme_queue *nvmeq)
{
	int status;
	struct nvme_command c;
	int flags = NVME_QUEUE_PHYS_CONTIG | NVME_SQ_PRIO_MEDIUM;

	FUNC2(&c, 0, sizeof(c));
	c.create_sq.opcode = nvme_admin_create_sq;
	c.create_sq.prp1 = FUNC1(nvmeq->sq_dma_addr);
	c.create_sq.sqid = FUNC0(qid);
	c.create_sq.qsize = FUNC0(nvmeq->q_depth - 1);
	c.create_sq.sq_flags = FUNC0(flags);
	c.create_sq.cqid = FUNC0(qid);

	status = FUNC3(dev, &c, NULL);
	if (status)
		return -EIO;
	return 0;
}