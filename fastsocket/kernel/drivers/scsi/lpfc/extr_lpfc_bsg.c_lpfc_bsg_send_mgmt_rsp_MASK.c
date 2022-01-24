#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct ulp_bde64 {int dummy; } ;
struct send_mgmt_resp {int /*<<< orphan*/  tag; } ;
struct lpfc_vport {struct lpfc_hba* phba; } ;
struct lpfc_hba {int dummy; } ;
struct lpfc_dmabuf {int /*<<< orphan*/  phys; scalar_t__ virt; int /*<<< orphan*/  list; } ;
struct TYPE_12__ {scalar_t__ payload_len; } ;
struct fc_bsg_job {int /*<<< orphan*/ * dd_data; TYPE_5__* reply; TYPE_6__ request_payload; TYPE_4__* request; TYPE_1__* shost; } ;
struct TYPE_11__ {int result; scalar_t__ reply_payload_rcv_len; } ;
struct TYPE_8__ {scalar_t__ vendor_cmd; } ;
struct TYPE_9__ {TYPE_2__ h_vendor; } ;
struct TYPE_10__ {TYPE_3__ rqst_data; } ;
struct TYPE_7__ {scalar_t__ hostdata; } ;

/* Variables and functions */
 int BUF_SZ_4K ; 
 int EACCES ; 
 int ENOMEM ; 
 int ERANGE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int IOCB_SUCCESS ; 
 int LPFC_BPL_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_dmabuf*) ; 
 struct lpfc_dmabuf* FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct lpfc_dmabuf* FUNC3 (struct lpfc_hba*,scalar_t__,int,struct ulp_bde64*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_dmabuf*,TYPE_6__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (struct lpfc_hba*,struct lpfc_dmabuf*) ; 
 int FUNC6 (struct lpfc_hba*,struct fc_bsg_job*,int /*<<< orphan*/ ,struct lpfc_dmabuf*,struct lpfc_dmabuf*,int) ; 
 scalar_t__ FUNC7 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct lpfc_hba*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(struct fc_bsg_job *job)
{
	struct lpfc_vport *vport = (struct lpfc_vport *)job->shost->hostdata;
	struct lpfc_hba *phba = vport->phba;
	struct send_mgmt_resp *mgmt_resp = (struct send_mgmt_resp *)
		job->request->rqst_data.h_vendor.vendor_cmd;
	struct ulp_bde64 *bpl;
	struct lpfc_dmabuf *bmp = NULL, *cmp = NULL;
	int bpl_entries;
	uint32_t tag = mgmt_resp->tag;
	unsigned long reqbfrcnt =
			(unsigned long)job->request_payload.payload_len;
	int rc = 0;

	/* in case no data is transferred */
	job->reply->reply_payload_rcv_len = 0;

	if (!reqbfrcnt || (reqbfrcnt > (80 * BUF_SZ_4K))) {
		rc = -ERANGE;
		goto send_mgmt_rsp_exit;
	}

	bmp = FUNC2(sizeof(struct lpfc_dmabuf), GFP_KERNEL);
	if (!bmp) {
		rc = -ENOMEM;
		goto send_mgmt_rsp_exit;
	}

	bmp->virt = FUNC7(phba, 0, &bmp->phys);
	if (!bmp->virt) {
		rc = -ENOMEM;
		goto send_mgmt_rsp_free_bmp;
	}

	FUNC0(&bmp->list);
	bpl = (struct ulp_bde64 *) bmp->virt;
	bpl_entries = (LPFC_BPL_SIZE/sizeof(struct ulp_bde64));
	cmp = FUNC3(phba, job->request_payload.payload_len,
				     1, bpl, &bpl_entries);
	if (!cmp) {
		rc = -ENOMEM;
		goto send_mgmt_rsp_free_bmp;
	}
	FUNC4(cmp, &job->request_payload,
			   job->request_payload.payload_len, 1);

	rc = FUNC6(phba, job, tag, cmp, bmp, bpl_entries);

	if (rc == IOCB_SUCCESS)
		return 0; /* done for now */

	rc = -EACCES;

	FUNC5(phba, cmp);

send_mgmt_rsp_free_bmp:
	if (bmp->virt)
		FUNC8(phba, bmp->virt, bmp->phys);
	FUNC1(bmp);
send_mgmt_rsp_exit:
	/* make error code available to userspace */
	job->reply->result = rc;
	job->dd_data = NULL;
	return rc;
}