#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_9__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct ocrdma_mqe {int dummy; } ;
struct ocrdma_mcqe {int dummy; } ;
struct TYPE_12__ {int /*<<< orphan*/  id; } ;
struct TYPE_11__ {TYPE_3__ cq; TYPE_3__ sq; } ;
struct TYPE_13__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  cmd_wait; } ;
struct TYPE_10__ {int /*<<< orphan*/  q; } ;
struct ocrdma_dev {TYPE_2__ mq; TYPE_9__ mqe_ctx; TYPE_1__ meq; } ;

/* Variables and functions */
 int /*<<< orphan*/  OCRDMA_MQ_CQ_LEN ; 
 int /*<<< orphan*/  OCRDMA_MQ_LEN ; 
 int /*<<< orphan*/  QTYPE_CQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_9__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct ocrdma_dev*,TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ocrdma_dev*,TYPE_3__*) ; 
 int FUNC5 (struct ocrdma_dev*,TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (struct ocrdma_dev*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct ocrdma_dev*,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct ocrdma_dev*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct ocrdma_dev *dev)
{
	int status;

	/* Alloc completion queue for Mailbox queue */
	status = FUNC3(dev, &dev->mq.cq, OCRDMA_MQ_CQ_LEN,
				sizeof(struct ocrdma_mcqe));
	if (status)
		goto alloc_err;

	status = FUNC7(dev, &dev->mq.cq, &dev->meq.q);
	if (status)
		goto mbx_cq_free;

	FUNC1(&dev->mqe_ctx, 0, sizeof(dev->mqe_ctx));
	FUNC0(&dev->mqe_ctx.cmd_wait);
	FUNC2(&dev->mqe_ctx.lock);

	/* Alloc Mailbox queue */
	status = FUNC3(dev, &dev->mq.sq, OCRDMA_MQ_LEN,
				sizeof(struct ocrdma_mqe));
	if (status)
		goto mbx_cq_destroy;
	status = FUNC5(dev, &dev->mq.sq, &dev->mq.cq);
	if (status)
		goto mbx_q_free;
	FUNC8(dev, dev->mq.cq.id, true, false, 0);
	return 0;

mbx_q_free:
	FUNC4(dev, &dev->mq.sq);
mbx_cq_destroy:
	FUNC6(dev, &dev->mq.cq, QTYPE_CQ);
mbx_cq_free:
	FUNC4(dev, &dev->mq.cq);
alloc_err:
	return status;
}