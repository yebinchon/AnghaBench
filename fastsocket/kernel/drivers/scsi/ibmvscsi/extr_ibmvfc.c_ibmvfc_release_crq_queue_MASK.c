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
struct ibmvfc_crq_queue {scalar_t__ msgs; int /*<<< orphan*/  msg_token; } ;
struct ibmvfc_host {int /*<<< orphan*/  dev; scalar_t__ logged_in; int /*<<< orphan*/  state; int /*<<< orphan*/  tasklet; struct ibmvfc_crq_queue crq; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 long H_BUSY ; 
 int /*<<< orphan*/  H_FREE_CRQ ; 
 scalar_t__ FUNC0 (long) ; 
 int /*<<< orphan*/  IBMVFC_NO_CRQ ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct ibmvfc_host*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct ibmvfc_host*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 long FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct vio_dev* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct ibmvfc_host *vhost)
{
	long rc = 0;
	struct vio_dev *vdev = FUNC8(vhost->dev);
	struct ibmvfc_crq_queue *crq = &vhost->crq;

	FUNC4(vhost, "Releasing CRQ\n");
	FUNC2(vdev->irq, vhost);
	FUNC7(&vhost->tasklet);
	do {
		if (rc)
			FUNC5(100);
		rc = FUNC6(H_FREE_CRQ, vdev->unit_address);
	} while (rc == H_BUSY || FUNC0(rc));

	vhost->state = IBMVFC_NO_CRQ;
	vhost->logged_in = 0;
	FUNC1(vhost->dev, crq->msg_token, PAGE_SIZE, DMA_BIDIRECTIONAL);
	FUNC3((unsigned long)crq->msgs);
}