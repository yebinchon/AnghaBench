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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;
struct carm_request {unsigned int tag; int /*<<< orphan*/  rq; scalar_t__ msg_bucket; void* msg_subtype; void* msg_type; } ;
struct carm_msg_ioctl {void* data_addr; void* handle; scalar_t__ array_id; void* subtype; void* type; } ;
struct carm_host {scalar_t__ state; int /*<<< orphan*/  lock; int /*<<< orphan*/  oob_q; } ;
struct carm_array_info {int dummy; } ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* CARM_ARRAY_INFO ; 
 void* CARM_MSG_ARRAY ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int) ; 
 int ENOMEM ; 
 scalar_t__ HST_DEV_SCAN ; 
 scalar_t__ HST_DEV_SCAN_START ; 
 scalar_t__ HST_ERROR ; 
 scalar_t__ FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct carm_request*) ; 
 struct carm_request* FUNC5 (struct carm_host*) ; 
 int FUNC6 (int) ; 
 struct carm_msg_ioctl* FUNC7 (struct carm_host*,unsigned int) ; 
 scalar_t__ FUNC8 (struct carm_host*,unsigned int) ; 
 void* FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct carm_msg_ioctl*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13 (struct carm_host *host, unsigned int array_idx)
{
	struct carm_msg_ioctl *ioc;
	unsigned int idx;
	u32 msg_data;
	dma_addr_t msg_dma;
	struct carm_request *crq;
	int rc;

	crq = FUNC5(host);
	if (!crq) {
		rc = -ENOMEM;
		goto err_out;
	}

	idx = crq->tag;

	ioc = FUNC7(host, idx);
	msg_dma = FUNC8(host, idx);
	msg_data = (u32) (msg_dma + sizeof(struct carm_array_info));

	crq->msg_type = CARM_MSG_ARRAY;
	crq->msg_subtype = CARM_ARRAY_INFO;
	rc = FUNC6(sizeof(struct carm_msg_ioctl) +
				sizeof(struct carm_array_info));
	FUNC0(rc < 0);
	crq->msg_bucket = (u32) rc;

	FUNC10(ioc, 0, sizeof(*ioc));
	ioc->type	= CARM_MSG_ARRAY;
	ioc->subtype	= CARM_ARRAY_INFO;
	ioc->array_id	= (u8) array_idx;
	ioc->handle	= FUNC9(FUNC2(idx));
	ioc->data_addr	= FUNC9(msg_data);

	FUNC11(&host->lock);
	FUNC3(host->state == HST_DEV_SCAN_START ||
	       host->state == HST_DEV_SCAN);
	FUNC12(&host->lock);

	FUNC1("blk_insert_request, tag == %u\n", idx);
	FUNC4(host->oob_q, crq->rq, 1, crq);

	return 0;

err_out:
	FUNC11(&host->lock);
	host->state = HST_ERROR;
	FUNC12(&host->lock);
	return rc;
}