#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct fc_bsg_job {TYPE_1__* reply; TYPE_3__* request; } ;
struct TYPE_6__ {int* vendor_cmd; } ;
struct TYPE_8__ {TYPE_2__ h_vendor; } ;
struct TYPE_7__ {TYPE_4__ rqst_data; } ;
struct TYPE_5__ {int result; int /*<<< orphan*/  reply_payload_rcv_len; } ;

/* Variables and functions */
 int EINVAL ; 
#define  LPFC_BSG_VENDOR_DIAG_MODE 138 
#define  LPFC_BSG_VENDOR_DIAG_MODE_END 137 
#define  LPFC_BSG_VENDOR_DIAG_RUN_LOOPBACK 136 
#define  LPFC_BSG_VENDOR_GET_CT_EVENT 135 
#define  LPFC_BSG_VENDOR_GET_MGMT_REV 134 
#define  LPFC_BSG_VENDOR_LINK_DIAG_TEST 133 
#define  LPFC_BSG_VENDOR_MBOX 132 
#define  LPFC_BSG_VENDOR_MENLO_CMD 131 
#define  LPFC_BSG_VENDOR_MENLO_DATA 130 
#define  LPFC_BSG_VENDOR_SEND_MGMT_RESP 129 
#define  LPFC_BSG_VENDOR_SET_CT_EVENT 128 
 int FUNC0 (struct fc_bsg_job*) ; 
 int FUNC1 (struct fc_bsg_job*) ; 
 int FUNC2 (struct fc_bsg_job*) ; 
 int FUNC3 (struct fc_bsg_job*) ; 
 int FUNC4 (struct fc_bsg_job*) ; 
 int FUNC5 (struct fc_bsg_job*) ; 
 int FUNC6 (struct fc_bsg_job*) ; 
 int FUNC7 (struct fc_bsg_job*) ; 
 int FUNC8 (struct fc_bsg_job*) ; 
 int FUNC9 (struct fc_bsg_job*) ; 

__attribute__((used)) static int
FUNC10(struct fc_bsg_job *job)
{
	int command = job->request->rqst_data.h_vendor.vendor_cmd[0];
	int rc;

	switch (command) {
	case LPFC_BSG_VENDOR_SET_CT_EVENT:
		rc = FUNC4(job);
		break;
	case LPFC_BSG_VENDOR_GET_CT_EVENT:
		rc = FUNC3(job);
		break;
	case LPFC_BSG_VENDOR_SEND_MGMT_RESP:
		rc = FUNC6(job);
		break;
	case LPFC_BSG_VENDOR_DIAG_MODE:
		rc = FUNC0(job);
		break;
	case LPFC_BSG_VENDOR_DIAG_MODE_END:
		rc = FUNC8(job);
		break;
	case LPFC_BSG_VENDOR_DIAG_RUN_LOOPBACK:
		rc = FUNC1(job);
		break;
	case LPFC_BSG_VENDOR_LINK_DIAG_TEST:
		rc = FUNC9(job);
		break;
	case LPFC_BSG_VENDOR_GET_MGMT_REV:
		rc = FUNC2(job);
		break;
	case LPFC_BSG_VENDOR_MBOX:
		rc = FUNC5(job);
		break;
	case LPFC_BSG_VENDOR_MENLO_CMD:
	case LPFC_BSG_VENDOR_MENLO_DATA:
		rc = FUNC7(job);
		break;
	default:
		rc = -EINVAL;
		job->reply->reply_payload_rcv_len = 0;
		/* make error code available to userspace */
		job->reply->result = rc;
		break;
	}

	return rc;
}