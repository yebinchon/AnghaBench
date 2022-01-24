#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct lpfc_hba {scalar_t__ link_state; int /*<<< orphan*/  hbalock; int /*<<< orphan*/  link_flag; TYPE_4__* pport; } ;
struct fc_bsg_request {int dummy; } ;
struct fc_bsg_job {int request_len; int /*<<< orphan*/  (* job_done ) (struct fc_bsg_job*) ;TYPE_5__* reply; TYPE_3__* request; } ;
struct diag_mode_set {int type; int timeout; } ;
struct TYPE_10__ {int result; scalar_t__ reply_payload_rcv_len; } ;
struct TYPE_9__ {int fc_myDID; } ;
struct TYPE_6__ {scalar_t__ vendor_cmd; } ;
struct TYPE_7__ {TYPE_1__ h_vendor; } ;
struct TYPE_8__ {TYPE_2__ rqst_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int ETIMEDOUT ; 
 int EXTERNAL_LOOP_BACK ; 
 int /*<<< orphan*/  FLAGS_TOPOLOGY_MODE_PT_PT ; 
 int INTERNAL_LOOP_BACK ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  LOG_LIBDFC ; 
 scalar_t__ LPFC_HBA_READY ; 
 scalar_t__ LPFC_LINK_DOWN ; 
 scalar_t__ LPFC_LINK_UP ; 
 int /*<<< orphan*/  LS_LOOPBACK_MODE ; 
 int FUNC0 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*) ; 
 int FUNC2 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC4 (struct lpfc_hba*) ; 
 int FUNC5 (struct lpfc_hba*) ; 
 int FUNC6 (struct lpfc_hba*,int) ; 
 int FUNC7 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct fc_bsg_job*) ; 

__attribute__((used)) static int
FUNC12(struct lpfc_hba *phba, struct fc_bsg_job *job)
{
	struct diag_mode_set *loopback_mode;
	uint32_t link_flags, timeout;
	int i, rc = 0;

	/* no data to return just the return code */
	job->reply->reply_payload_rcv_len = 0;

	if (job->request_len < sizeof(struct fc_bsg_request) +
	    sizeof(struct diag_mode_set)) {
		FUNC3(phba, KERN_WARNING, LOG_LIBDFC,
				"3011 Received DIAG MODE request size:%d "
				"below the minimum size:%d\n",
				job->request_len,
				(int)(sizeof(struct fc_bsg_request) +
				sizeof(struct diag_mode_set)));
		rc = -EINVAL;
		goto job_error;
	}

	rc = FUNC0(phba);
	if (rc)
		goto job_error;

	/* indicate we are in loobpack diagnostic mode */
	FUNC9(&phba->hbalock);
	phba->link_flag |= LS_LOOPBACK_MODE;
	FUNC10(&phba->hbalock);

	/* reset port to start frome scratch */
	rc = FUNC4(phba);
	if (rc)
		goto job_error;

	/* bring the link to diagnostic mode */
	FUNC3(phba, KERN_INFO, LOG_LIBDFC,
			"3129 Bring link to diagnostic state.\n");
	loopback_mode = (struct diag_mode_set *)
		job->request->rqst_data.h_vendor.vendor_cmd;
	link_flags = loopback_mode->type;
	timeout = loopback_mode->timeout * 100;

	rc = FUNC6(phba, 1);
	if (rc) {
		FUNC3(phba, KERN_WARNING, LOG_LIBDFC,
				"3130 Failed to bring link to diagnostic "
				"state, rc:x%x\n", rc);
		goto loopback_mode_exit;
	}

	/* wait for link down before proceeding */
	i = 0;
	while (phba->link_state != LPFC_LINK_DOWN) {
		if (i++ > timeout) {
			rc = -ETIMEDOUT;
			FUNC3(phba, KERN_INFO, LOG_LIBDFC,
					"3131 Timeout waiting for link to "
					"diagnostic mode, timeout:%d ms\n",
					timeout * 10);
			goto loopback_mode_exit;
		}
		FUNC8(10);
	}

	/* set up loopback mode */
	FUNC3(phba, KERN_INFO, LOG_LIBDFC,
			"3132 Set up loopback mode:x%x\n", link_flags);

	if (link_flags == INTERNAL_LOOP_BACK)
		rc = FUNC5(phba);
	else if (link_flags == EXTERNAL_LOOP_BACK)
		rc = FUNC2(phba,
						    FLAGS_TOPOLOGY_MODE_PT_PT);
	else {
		rc = -EINVAL;
		FUNC3(phba, KERN_ERR, LOG_LIBDFC,
				"3141 Loopback mode:x%x not supported\n",
				link_flags);
		goto loopback_mode_exit;
	}

	if (!rc) {
		/* wait for the link attention interrupt */
		FUNC8(100);
		i = 0;
		while (phba->link_state < LPFC_LINK_UP) {
			if (i++ > timeout) {
				rc = -ETIMEDOUT;
				FUNC3(phba, KERN_INFO, LOG_LIBDFC,
					"3137 Timeout waiting for link up "
					"in loopback mode, timeout:%d ms\n",
					timeout * 10);
				break;
			}
			FUNC8(10);
		}
	}

	/* port resource registration setup for loopback diagnostic */
	if (!rc) {
		/* set up a none zero myDID for loopback test */
		phba->pport->fc_myDID = 1;
		rc = FUNC7(phba);
	} else
		goto loopback_mode_exit;

	if (!rc) {
		/* wait for the port ready */
		FUNC8(100);
		i = 0;
		while (phba->link_state != LPFC_HBA_READY) {
			if (i++ > timeout) {
				rc = -ETIMEDOUT;
				FUNC3(phba, KERN_INFO, LOG_LIBDFC,
					"3133 Timeout waiting for port "
					"loopback mode ready, timeout:%d ms\n",
					timeout * 10);
				break;
			}
			FUNC8(10);
		}
	}

loopback_mode_exit:
	/* clear loopback diagnostic mode */
	if (rc) {
		FUNC9(&phba->hbalock);
		phba->link_flag &= ~LS_LOOPBACK_MODE;
		FUNC10(&phba->hbalock);
	}
	FUNC1(phba);

job_error:
	/* make error code available to userspace */
	job->reply->result = rc;
	/* complete the job back to userspace if no error */
	if (rc == 0)
		job->job_done(job);
	return rc;
}