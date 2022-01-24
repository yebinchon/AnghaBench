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
struct nvme_queue {int cq_phase; int q_depth; int cq_vector; int q_suspended; int /*<<< orphan*/  cq_dma_addr; void* cqes; int /*<<< orphan*/ * q_db; int /*<<< orphan*/  sq_cong; int /*<<< orphan*/  sq_cong_wait; int /*<<< orphan*/  sq_full; scalar_t__ cq_head; int /*<<< orphan*/  q_lock; struct nvme_dev* dev; struct device* q_dmadev; void* sq_cmds; int /*<<< orphan*/  sq_dma_addr; } ;
struct nvme_dev {int db_stride; int /*<<< orphan*/  queue_count; int /*<<< orphan*/ * dbs; TYPE_1__* pci_dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct nvme_queue*) ; 
 struct nvme_queue* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC10 (int) ; 
 int /*<<< orphan*/  nvme_thread ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct nvme_queue *FUNC12(struct nvme_dev *dev, int qid,
							int depth, int vector)
{
	struct device *dmadev = &dev->pci_dev->dev;
	unsigned extra = FUNC10(depth);
	struct nvme_queue *nvmeq = FUNC8(sizeof(*nvmeq) + extra, GFP_KERNEL);
	if (!nvmeq)
		return NULL;

	nvmeq->cqes = FUNC3(dmadev, FUNC0(depth),
					&nvmeq->cq_dma_addr, GFP_KERNEL);
	if (!nvmeq->cqes)
		goto free_nvmeq;
	FUNC9((void *)nvmeq->cqes, 0, FUNC0(depth));

	nvmeq->sq_cmds = FUNC3(dmadev, FUNC1(depth),
					&nvmeq->sq_dma_addr, GFP_KERNEL);
	if (!nvmeq->sq_cmds)
		goto free_cqdma;

	nvmeq->q_dmadev = dmadev;
	nvmeq->dev = dev;
	FUNC11(&nvmeq->q_lock);
	nvmeq->cq_head = 0;
	nvmeq->cq_phase = 1;
	FUNC6(&nvmeq->sq_full);
	FUNC5(&nvmeq->sq_cong_wait, nvme_thread);
	FUNC2(&nvmeq->sq_cong);
	nvmeq->q_db = &dev->dbs[qid << (dev->db_stride + 1)];
	nvmeq->q_depth = depth;
	nvmeq->cq_vector = vector;
	nvmeq->q_suspended = 1;
	dev->queue_count++;

	return nvmeq;

 free_cqdma:
	FUNC4(dmadev, FUNC0(depth), (void *)nvmeq->cqes,
							nvmeq->cq_dma_addr);
 free_nvmeq:
	FUNC7(nvmeq);
	return NULL;
}