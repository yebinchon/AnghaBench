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
struct viosrp_crq {int dummy; } ;
struct vio_port {TYPE_1__* dma_dev; } ;
struct srp_target {int /*<<< orphan*/  dev; } ;
struct crq_queue {int size; struct viosrp_crq* msgs; int /*<<< orphan*/  msg_token; int /*<<< orphan*/  lock; scalar_t__ cur; } ;
struct TYPE_2__ {int /*<<< orphan*/  unit_address; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int H_BUSY ; 
 scalar_t__ FUNC0 (int) ; 
 int H_RESOURCE ; 
 int H_SUCCESS ; 
 int /*<<< orphan*/  IRQF_DISABLED ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct viosrp_crq*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ibmvstgt_interrupt ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,struct srp_target*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 struct vio_port* FUNC12 (struct srp_target*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC14(struct crq_queue *queue, struct srp_target *target)
{
	int err;
	struct vio_port *vport = FUNC12(target);

	queue->msgs = (struct viosrp_crq *) FUNC6(GFP_KERNEL);
	if (!queue->msgs)
		goto malloc_failed;
	queue->size = PAGE_SIZE / sizeof(*queue->msgs);

	queue->msg_token = FUNC1(target->dev, queue->msgs,
					  queue->size * sizeof(*queue->msgs),
					  DMA_BIDIRECTIONAL);

	if (FUNC2(target->dev, queue->msg_token))
		goto map_failed;

	err = FUNC8(vport->dma_dev->unit_address, queue->msg_token,
			PAGE_SIZE);

	/* If the adapter was left active for some reason (like kexec)
	 * try freeing and re-registering
	 */
	if (err == H_RESOURCE) {
	    do {
		err = FUNC7(vport->dma_dev->unit_address);
	    } while (err == H_BUSY || FUNC0(err));

	    err = FUNC8(vport->dma_dev->unit_address, queue->msg_token,
			    PAGE_SIZE);
	}

	if (err != H_SUCCESS && err != 2) {
		FUNC4("Error 0x%x opening virtual adapter\n", err);
		goto reg_crq_failed;
	}

	err = FUNC10(vport->dma_dev->irq, &ibmvstgt_interrupt,
			  IRQF_DISABLED, "ibmvstgt", target);
	if (err)
		goto req_irq_failed;

	FUNC13(vport->dma_dev);

	FUNC9(vport->dma_dev->unit_address, 0xC001000000000000, 0);

	queue->cur = 0;
	FUNC11(&queue->lock);

	return 0;

req_irq_failed:
	do {
		err = FUNC7(vport->dma_dev->unit_address);
	} while (err == H_BUSY || FUNC0(err));

reg_crq_failed:
	FUNC3(target->dev, queue->msg_token,
			 queue->size * sizeof(*queue->msgs), DMA_BIDIRECTIONAL);
map_failed:
	FUNC5((unsigned long) queue->msgs);

malloc_failed:
	return -ENOMEM;
}