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
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct scatterlist {int dummy; } ;
struct request_queue {struct carm_port* queuedata; } ;
struct request {int dummy; } ;
struct carm_request {int n_elem; int msg_bucket; int /*<<< orphan*/  tag; struct scatterlist* sg; void* msg_type; struct carm_port* port; struct request* rq; } ;
struct carm_port {int /*<<< orphan*/  port_no; struct carm_host* host; } ;
struct carm_msg_sg {void* len; void* start; } ;
struct carm_msg_rw {int sg_count; struct carm_msg_sg* sg; void* lba_count; void* lba_high; void* lba; void* handle; int /*<<< orphan*/  sg_type; int /*<<< orphan*/  id; void* type; } ;
struct carm_host {int hw_sg_used; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* CARM_MSG_READ ; 
 void* CARM_MSG_WRITE ; 
 int /*<<< orphan*/  EIO ; 
 int PCI_DMA_FROMDEVICE ; 
 int PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  SGT_32BIT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 scalar_t__ WRITE ; 
 struct request* FUNC3 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC4 (struct request_queue*,struct request*) ; 
 int FUNC5 (struct request_queue*,struct request*,struct scatterlist*) ; 
 int FUNC6 (struct request*) ; 
 int /*<<< orphan*/  FUNC7 (struct request*) ; 
 int /*<<< orphan*/  FUNC8 (struct request*) ; 
 int /*<<< orphan*/  FUNC9 (struct carm_host*,struct carm_request*,int /*<<< orphan*/ ) ; 
 struct carm_request* FUNC10 (struct carm_host*) ; 
 int FUNC11 (unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (struct carm_host*,struct request_queue*) ; 
 int /*<<< orphan*/  FUNC13 (struct carm_host*,struct carm_request*) ; 
 scalar_t__ FUNC14 (struct carm_host*,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct carm_host*,struct carm_request*) ; 
 void* FUNC16 (int /*<<< orphan*/ ) ; 
 void* FUNC17 (int) ; 
 int FUNC18 (int /*<<< orphan*/ ,struct scatterlist*,int,int) ; 
 scalar_t__ FUNC19 (struct request*) ; 
 int FUNC20 (struct scatterlist*) ; 
 int FUNC21 (struct scatterlist*) ; 

__attribute__((used)) static void FUNC22(struct request_queue *q)
{
	struct carm_port *port = q->queuedata;
	struct carm_host *host = port->host;
	struct carm_msg_rw *msg;
	struct carm_request *crq;
	struct request *rq;
	struct scatterlist *sg;
	int writing = 0, pci_dir, i, n_elem, rc;
	u32 tmp;
	unsigned int msg_size;

queue_one_request:
	FUNC2("get req\n");
	rq = FUNC3(q);
	if (!rq)
		return;

	crq = FUNC10(host);
	if (!crq) {
		FUNC12(host, q);
		return;		/* call us again later, eventually */
	}
	crq->rq = rq;

	FUNC8(rq);

	if (FUNC19(rq) == WRITE) {
		writing = 1;
		pci_dir = PCI_DMA_TODEVICE;
	} else {
		pci_dir = PCI_DMA_FROMDEVICE;
	}

	/* get scatterlist from block layer */
	sg = &crq->sg[0];
	n_elem = FUNC5(q, rq, sg);
	if (n_elem <= 0) {
		FUNC9(host, crq, -EIO);
		return;		/* request with no s/g entries? */
	}

	/* map scatterlist to PCI bus addresses */
	n_elem = FUNC18(host->pdev, sg, n_elem, pci_dir);
	if (n_elem <= 0) {
		FUNC9(host, crq, -EIO);
		return;		/* request with no s/g entries? */
	}
	crq->n_elem = n_elem;
	crq->port = port;
	host->hw_sg_used += n_elem;

	/*
	 * build read/write message
	 */

	FUNC2("build msg\n");
	msg = (struct carm_msg_rw *) FUNC14(host, crq->tag);

	if (writing) {
		msg->type = CARM_MSG_WRITE;
		crq->msg_type = CARM_MSG_WRITE;
	} else {
		msg->type = CARM_MSG_READ;
		crq->msg_type = CARM_MSG_READ;
	}

	msg->id		= port->port_no;
	msg->sg_count	= n_elem;
	msg->sg_type	= SGT_32BIT;
	msg->handle	= FUNC17(FUNC1(crq->tag));
	msg->lba	= FUNC17(FUNC6(rq) & 0xffffffff);
	tmp		= (FUNC6(rq) >> 16) >> 16;
	msg->lba_high	= FUNC16( (u16) tmp );
	msg->lba_count	= FUNC16(FUNC7(rq));

	msg_size = sizeof(struct carm_msg_rw) - sizeof(msg->sg);
	for (i = 0; i < n_elem; i++) {
		struct carm_msg_sg *carm_sg = &msg->sg[i];
		carm_sg->start = FUNC17(FUNC20(&crq->sg[i]));
		carm_sg->len = FUNC17(FUNC21(&crq->sg[i]));
		msg_size += sizeof(struct carm_msg_sg);
	}

	rc = FUNC11(msg_size);
	FUNC0(rc < 0);
	crq->msg_bucket = (u32) rc;

	/*
	 * queue read/write message to hardware
	 */

	FUNC2("send msg, tag == %u\n", crq->tag);
	rc = FUNC15(host, crq);
	if (rc) {
		FUNC13(host, crq);
		FUNC4(q, rq);
		FUNC12(host, q);
		return;		/* call us again later, eventually */
	}

	goto queue_one_request;
}