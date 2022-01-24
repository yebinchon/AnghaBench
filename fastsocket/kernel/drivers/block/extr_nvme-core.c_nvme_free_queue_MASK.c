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
struct nvme_queue {void* sq_cmds; int /*<<< orphan*/  sq_dma_addr; int /*<<< orphan*/  q_depth; int /*<<< orphan*/  q_dmadev; int /*<<< orphan*/  cq_dma_addr; scalar_t__ cqes; int /*<<< orphan*/  q_lock; int /*<<< orphan*/  sq_cong; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 struct bio* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct nvme_queue*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct nvme_queue *nvmeq)
{
	FUNC7(&nvmeq->q_lock);
	while (FUNC3(&nvmeq->sq_cong)) {
		struct bio *bio = FUNC4(&nvmeq->sq_cong);
		FUNC2(bio, -EIO);
	}
	FUNC8(&nvmeq->q_lock);

	FUNC5(nvmeq->q_dmadev, FUNC0(nvmeq->q_depth),
				(void *)nvmeq->cqes, nvmeq->cq_dma_addr);
	FUNC5(nvmeq->q_dmadev, FUNC1(nvmeq->q_depth),
					nvmeq->sq_cmds, nvmeq->sq_dma_addr);
	FUNC6(nvmeq);
}