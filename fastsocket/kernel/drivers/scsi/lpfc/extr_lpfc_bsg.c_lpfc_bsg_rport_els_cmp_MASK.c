#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_9__ ;
typedef  struct TYPE_21__   TYPE_8__ ;
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_11__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
typedef  void* uint8_t ;
struct TYPE_14__ {struct lpfc_nodelist* ndlp; } ;
struct TYPE_15__ {TYPE_1__ iocb; } ;
struct lpfc_nodelist {struct fc_bsg_job* set_job; TYPE_2__ context_un; } ;
struct TYPE_17__ {unsigned int bdeSize; } ;
struct TYPE_18__ {TYPE_4__ bdl; } ;
struct TYPE_20__ {int /*<<< orphan*/ * ulpWord; TYPE_5__ elsreq64; } ;
struct TYPE_13__ {scalar_t__ ulpStatus; TYPE_7__ un; } ;
struct lpfc_iocbq {scalar_t__ context2; TYPE_11__ iocb; struct lpfc_nodelist* context1; } ;
struct lpfc_hba {int /*<<< orphan*/  ct_ev_lock; } ;
struct TYPE_16__ {scalar_t__ next; } ;
struct lpfc_dmabuf {int /*<<< orphan*/  virt; TYPE_3__ list; } ;
struct TYPE_19__ {int /*<<< orphan*/  sg_cnt; int /*<<< orphan*/  sg_list; } ;
struct fc_bsg_job {int /*<<< orphan*/  (* job_done ) (struct fc_bsg_job*) ;TYPE_10__* reply; TYPE_6__ reply_payload; int /*<<< orphan*/ * dd_data; } ;
struct TYPE_22__ {void* vendor_unique; void* reason_explanation; void* reason_code; void* action; } ;
struct fc_bsg_ctels_reply {TYPE_9__ rjt_data; int /*<<< orphan*/  status; } ;
struct bsg_job_data {struct fc_bsg_job* set_job; TYPE_2__ context_un; } ;
struct TYPE_21__ {struct fc_bsg_ctels_reply ctels_reply; } ;
struct TYPE_12__ {int reply_payload_rcv_len; int result; TYPE_8__ reply_data; } ;
typedef  TYPE_11__ IOCB_t ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FC_CTELS_STATUS_REJECT ; 
 scalar_t__ IOSTAT_LS_RJT ; 
 scalar_t__ IOSTAT_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*,struct lpfc_iocbq*) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_nodelist*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct fc_bsg_job*) ; 

__attribute__((used)) static void
FUNC7(struct lpfc_hba *phba,
			struct lpfc_iocbq *cmdiocbq,
			struct lpfc_iocbq *rspiocbq)
{
	struct bsg_job_data *dd_data;
	struct fc_bsg_job *job;
	IOCB_t *rsp;
	struct lpfc_nodelist *ndlp;
	struct lpfc_dmabuf *pcmd = NULL, *prsp = NULL;
	struct fc_bsg_ctels_reply *els_reply;
	uint8_t *rjt_data;
	unsigned long flags;
	unsigned int rsp_size;
	int rc = 0;

	dd_data = cmdiocbq->context1;
	ndlp = dd_data->context_un.iocb.ndlp;
	cmdiocbq->context1 = ndlp;

	/* Determine if job has been aborted */
	FUNC4(&phba->ct_ev_lock, flags);
	job = dd_data->set_job;
	if (job) {
		/* Prevent timeout handling from trying to abort job  */
		job->dd_data = NULL;
	}
	FUNC5(&phba->ct_ev_lock, flags);

	rsp = &rspiocbq->iocb;
	pcmd = (struct lpfc_dmabuf *)cmdiocbq->context2;
	prsp = (struct lpfc_dmabuf *)pcmd->list.next;

	/* Copy the completed job data or determine the job status if job is
	 * still active
	 */

	if (job) {
		if (rsp->ulpStatus == IOSTAT_SUCCESS) {
			rsp_size = rsp->un.elsreq64.bdl.bdeSize;
			job->reply->reply_payload_rcv_len =
				FUNC3(job->reply_payload.sg_list,
						    job->reply_payload.sg_cnt,
						    prsp->virt,
						    rsp_size);
		} else if (rsp->ulpStatus == IOSTAT_LS_RJT) {
			job->reply->reply_payload_rcv_len =
				sizeof(struct fc_bsg_ctels_reply);
			/* LS_RJT data returned in word 4 */
			rjt_data = (uint8_t *)&rsp->un.ulpWord[4];
			els_reply = &job->reply->reply_data.ctels_reply;
			els_reply->status = FC_CTELS_STATUS_REJECT;
			els_reply->rjt_data.action = rjt_data[3];
			els_reply->rjt_data.reason_code = rjt_data[2];
			els_reply->rjt_data.reason_explanation = rjt_data[1];
			els_reply->rjt_data.vendor_unique = rjt_data[0];
		} else {
			rc = -EIO;
		}
	}

	FUNC2(ndlp);
	FUNC1(phba, cmdiocbq);
	FUNC0(dd_data);

	/* Complete the job if the job is still active */

	if (job) {
		job->reply->result = rc;
		job->job_done(job);
	}
	return;
}