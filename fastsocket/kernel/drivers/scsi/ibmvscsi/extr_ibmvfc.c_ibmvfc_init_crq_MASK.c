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
struct vio_dev {int /*<<< orphan*/  unit_address; int /*<<< orphan*/  irq; } ;
struct ibmvfc_crq_queue {int size; struct ibmvfc_crq* msgs; int /*<<< orphan*/  msg_token; scalar_t__ cur; } ;
struct ibmvfc_host {int /*<<< orphan*/  tasklet; struct ibmvfc_crq_queue crq; struct device* dev; } ;
struct ibmvfc_crq {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ENTER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int H_BUSY ; 
 int H_CLOSED ; 
 int /*<<< orphan*/  H_FREE_CRQ ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  H_REG_CRQ ; 
 int H_RESOURCE ; 
 int /*<<< orphan*/  IBMVFC_NAME ; 
 int /*<<< orphan*/  LEAVE ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct ibmvfc_crq*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ibmvfc_interrupt ; 
 int FUNC8 (struct ibmvfc_host*) ; 
 scalar_t__ ibmvfc_tasklet ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ibmvfc_host*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,void*,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 struct vio_dev* FUNC13 (struct device*) ; 
 int FUNC14 (struct vio_dev*) ; 

__attribute__((used)) static int FUNC15(struct ibmvfc_host *vhost)
{
	int rc, retrc = -ENOMEM;
	struct device *dev = vhost->dev;
	struct vio_dev *vdev = FUNC13(dev);
	struct ibmvfc_crq_queue *crq = &vhost->crq;

	ENTER;
	crq->msgs = (struct ibmvfc_crq *)FUNC7(GFP_KERNEL);

	if (!crq->msgs)
		return -ENOMEM;

	crq->size = PAGE_SIZE / sizeof(*crq->msgs);
	crq->msg_token = FUNC3(dev, crq->msgs,
					PAGE_SIZE, DMA_BIDIRECTIONAL);

	if (FUNC4(dev, crq->msg_token))
		goto map_failed;

	retrc = rc = FUNC9(H_REG_CRQ, vdev->unit_address,
					crq->msg_token, PAGE_SIZE);

	if (rc == H_RESOURCE)
		/* maybe kexecing and resource is busy. try a reset */
		retrc = rc = FUNC8(vhost);

	if (rc == H_CLOSED)
		FUNC2(dev, "Partner adapter not ready\n");
	else if (rc) {
		FUNC2(dev, "Error %d opening adapter\n", rc);
		goto reg_crq_failed;
	}

	retrc = 0;

	FUNC11(&vhost->tasklet, (void *)ibmvfc_tasklet, (unsigned long)vhost);

	if ((rc = FUNC10(vdev->irq, ibmvfc_interrupt, 0, IBMVFC_NAME, vhost))) {
		FUNC1(dev, "Couldn't register irq 0x%x. rc=%d\n", vdev->irq, rc);
		goto req_irq_failed;
	}

	if ((rc = FUNC14(vdev))) {
		FUNC1(dev, "Error %d enabling interrupts\n", rc);
		goto req_irq_failed;
	}

	crq->cur = 0;
	LEAVE;
	return retrc;

req_irq_failed:
	FUNC12(&vhost->tasklet);
	do {
		rc = FUNC9(H_FREE_CRQ, vdev->unit_address);
	} while (rc == H_BUSY || FUNC0(rc));
reg_crq_failed:
	FUNC5(dev, crq->msg_token, PAGE_SIZE, DMA_BIDIRECTIONAL);
map_failed:
	FUNC6((unsigned long)crq->msgs);
	return retrc;
}