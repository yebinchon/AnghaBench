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
typedef  size_t u32 ;
struct task_status_struct {size_t residual; void* stat; void* resp; void* open_rej_reason; } ;
struct ssp_response_iu {int /*<<< orphan*/  status; } ;
struct ssp_completion_resp {struct ssp_response_iu ssp_resp_iu; int /*<<< orphan*/  param; int /*<<< orphan*/  tag; int /*<<< orphan*/  status; } ;
struct sas_task {int task_state_flags; int /*<<< orphan*/  (* task_done ) (struct sas_task*) ;int /*<<< orphan*/  task_state_lock; int /*<<< orphan*/  uldd_task; struct task_status_struct task_status; int /*<<< orphan*/  dev; int /*<<< orphan*/  lldd_task; } ;
struct pm8001_hba_info {int /*<<< orphan*/  dev; struct pm8001_ccb_info* ccb_info; } ;
struct pm8001_device {int /*<<< orphan*/  running_req; } ;
struct pm8001_ccb_info {struct sas_task* task; struct pm8001_device* device; scalar_t__ open_retry; } ;

/* Variables and functions */
#define  IO_ABORTED 151 
#define  IO_DS_IN_RECOVERY 150 
#define  IO_DS_NON_OPERATIONAL 149 
#define  IO_NO_DEVICE 148 
#define  IO_OPEN_CNX_ERROR_BAD_DESTINATION 147 
#define  IO_OPEN_CNX_ERROR_BREAK 146 
#define  IO_OPEN_CNX_ERROR_CONNECTION_RATE_NOT_SUPPORTED 145 
#define  IO_OPEN_CNX_ERROR_HW_RESOURCE_BUSY 144 
#define  IO_OPEN_CNX_ERROR_IT_NEXUS_LOSS 143 
#define  IO_OPEN_CNX_ERROR_PROTOCOL_NOT_SUPPORTED 142 
#define  IO_OPEN_CNX_ERROR_WRONG_DESTINATION 141 
#define  IO_OPEN_CNX_ERROR_ZONE_VIOLATION 140 
#define  IO_PORT_IN_RESET 139 
#define  IO_SSP_EXT_IU_ZERO_LEN_ERROR 138 
#define  IO_SUCCESS 137 
#define  IO_TM_TAG_NOT_FOUND 136 
#define  IO_UNDERFLOW 135 
#define  IO_XFER_ERROR_ACK_NAK_TIMEOUT 134 
#define  IO_XFER_ERROR_BREAK 133 
#define  IO_XFER_ERROR_DMA 132 
#define  IO_XFER_ERROR_NAK_RECEIVED 131 
#define  IO_XFER_ERROR_OFFSET_MISMATCH 130 
#define  IO_XFER_ERROR_PHY_NOT_READY 129 
#define  IO_XFER_OPEN_RETRY_TIMEOUT 128 
 int /*<<< orphan*/  FUNC0 (struct pm8001_hba_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pm8001_hba_info*,int /*<<< orphan*/ ) ; 
 void* SAM_STAT_GOOD ; 
 void* SAS_ABORTED_TASK ; 
 void* SAS_DATA_UNDERRUN ; 
 void* SAS_NAK_R_ERR ; 
 void* SAS_OPEN_REJECT ; 
 void* SAS_OREJ_BAD_DEST ; 
 void* SAS_OREJ_CONN_RATE ; 
 void* SAS_OREJ_EPROTO ; 
 void* SAS_OREJ_RSVD_RETRY ; 
 void* SAS_OREJ_UNKNOWN ; 
 void* SAS_OREJ_WRONG_DEST ; 
 void* SAS_PHY_DOWN ; 
 void* SAS_PROTO_RESPONSE ; 
 int SAS_TASK_AT_INITIATOR ; 
 void* SAS_TASK_COMPLETE ; 
 int SAS_TASK_STATE_ABORTED ; 
 int SAS_TASK_STATE_DONE ; 
 int SAS_TASK_STATE_PENDING ; 
 void* SAS_TASK_UNDELIVERED ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct pm8001_hba_info*,struct sas_task*,struct pm8001_ccb_info*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct pm8001_hba_info*,struct pm8001_device*,int const) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct sas_task*,struct ssp_response_iu*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (struct sas_task*) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static void
FUNC12(struct pm8001_hba_info *pm8001_ha , void *piomb)
{
	struct sas_task *t;
	struct pm8001_ccb_info *ccb;
	unsigned long flags;
	u32 status;
	u32 param;
	u32 tag;
	struct ssp_completion_resp *psspPayload;
	struct task_status_struct *ts;
	struct ssp_response_iu *iu;
	struct pm8001_device *pm8001_dev;
	psspPayload = (struct ssp_completion_resp *)(piomb + 4);
	status = FUNC2(psspPayload->status);
	tag = FUNC2(psspPayload->tag);
	ccb = &pm8001_ha->ccb_info[tag];
	if ((status == IO_ABORTED) && ccb->open_retry) {
		/* Being completed by another */
		ccb->open_retry = 0;
		return;
	}
	pm8001_dev = ccb->device;
	param = FUNC2(psspPayload->param);

	t = ccb->task;

	if (status && status != IO_UNDERFLOW)
		FUNC0(pm8001_ha,
			FUNC6("sas IO status 0x%x\n", status));
	if (FUNC11(!t || !t->lldd_task || !t->dev))
		return;
	ts = &t->task_status;
	switch (status) {
	case IO_SUCCESS:
		FUNC1(pm8001_ha, FUNC6("IO_SUCCESS"
			",param = %d\n", param));
		if (param == 0) {
			ts->resp = SAS_TASK_COMPLETE;
			ts->stat = SAM_STAT_GOOD;
		} else {
			ts->resp = SAS_TASK_COMPLETE;
			ts->stat = SAS_PROTO_RESPONSE;
			ts->residual = param;
			iu = &psspPayload->ssp_resp_iu;
			FUNC7(pm8001_ha->dev, t, iu);
		}
		if (pm8001_dev)
			pm8001_dev->running_req--;
		break;
	case IO_ABORTED:
		FUNC1(pm8001_ha,
			FUNC6("IO_ABORTED IOMB Tag\n"));
		ts->resp = SAS_TASK_COMPLETE;
		ts->stat = SAS_ABORTED_TASK;
		break;
	case IO_UNDERFLOW:
		/* SSP Completion with error */
		FUNC1(pm8001_ha, FUNC6("IO_UNDERFLOW"
			",param = %d\n", param));
		ts->resp = SAS_TASK_COMPLETE;
		ts->stat = SAS_DATA_UNDERRUN;
		ts->residual = param;
		if (pm8001_dev)
			pm8001_dev->running_req--;
		break;
	case IO_NO_DEVICE:
		FUNC1(pm8001_ha,
			FUNC6("IO_NO_DEVICE\n"));
		ts->resp = SAS_TASK_UNDELIVERED;
		ts->stat = SAS_PHY_DOWN;
		break;
	case IO_XFER_ERROR_BREAK:
		FUNC1(pm8001_ha,
			FUNC6("IO_XFER_ERROR_BREAK\n"));
		ts->resp = SAS_TASK_COMPLETE;
		ts->stat = SAS_OPEN_REJECT;
		/* Force the midlayer to retry */
		ts->open_rej_reason = SAS_OREJ_RSVD_RETRY;
		break;
	case IO_XFER_ERROR_PHY_NOT_READY:
		FUNC1(pm8001_ha,
			FUNC6("IO_XFER_ERROR_PHY_NOT_READY\n"));
		ts->resp = SAS_TASK_COMPLETE;
		ts->stat = SAS_OPEN_REJECT;
		ts->open_rej_reason = SAS_OREJ_RSVD_RETRY;
		break;
	case IO_OPEN_CNX_ERROR_PROTOCOL_NOT_SUPPORTED:
		FUNC1(pm8001_ha,
		FUNC6("IO_OPEN_CNX_ERROR_PROTOCOL_NOT_SUPPORTED\n"));
		ts->resp = SAS_TASK_COMPLETE;
		ts->stat = SAS_OPEN_REJECT;
		ts->open_rej_reason = SAS_OREJ_EPROTO;
		break;
	case IO_OPEN_CNX_ERROR_ZONE_VIOLATION:
		FUNC1(pm8001_ha,
			FUNC6("IO_OPEN_CNX_ERROR_ZONE_VIOLATION\n"));
		ts->resp = SAS_TASK_COMPLETE;
		ts->stat = SAS_OPEN_REJECT;
		ts->open_rej_reason = SAS_OREJ_UNKNOWN;
		break;
	case IO_OPEN_CNX_ERROR_BREAK:
		FUNC1(pm8001_ha,
			FUNC6("IO_OPEN_CNX_ERROR_BREAK\n"));
		ts->resp = SAS_TASK_COMPLETE;
		ts->stat = SAS_OPEN_REJECT;
		ts->open_rej_reason = SAS_OREJ_RSVD_RETRY;
		break;
	case IO_OPEN_CNX_ERROR_IT_NEXUS_LOSS:
		FUNC1(pm8001_ha,
			FUNC6("IO_OPEN_CNX_ERROR_IT_NEXUS_LOSS\n"));
		ts->resp = SAS_TASK_COMPLETE;
		ts->stat = SAS_OPEN_REJECT;
		ts->open_rej_reason = SAS_OREJ_UNKNOWN;
		if (!t->uldd_task)
			FUNC5(pm8001_ha,
				pm8001_dev,
				IO_OPEN_CNX_ERROR_IT_NEXUS_LOSS);
		break;
	case IO_OPEN_CNX_ERROR_BAD_DESTINATION:
		FUNC1(pm8001_ha,
			FUNC6("IO_OPEN_CNX_ERROR_BAD_DESTINATION\n"));
		ts->resp = SAS_TASK_COMPLETE;
		ts->stat = SAS_OPEN_REJECT;
		ts->open_rej_reason = SAS_OREJ_BAD_DEST;
		break;
	case IO_OPEN_CNX_ERROR_CONNECTION_RATE_NOT_SUPPORTED:
		FUNC1(pm8001_ha,
			FUNC6("IO_OPEN_CNX_ERROR_CONNECTION_RATE_"
			"NOT_SUPPORTED\n"));
		ts->resp = SAS_TASK_COMPLETE;
		ts->stat = SAS_OPEN_REJECT;
		ts->open_rej_reason = SAS_OREJ_CONN_RATE;
		break;
	case IO_OPEN_CNX_ERROR_WRONG_DESTINATION:
		FUNC1(pm8001_ha,
			FUNC6("IO_OPEN_CNX_ERROR_WRONG_DESTINATION\n"));
		ts->resp = SAS_TASK_UNDELIVERED;
		ts->stat = SAS_OPEN_REJECT;
		ts->open_rej_reason = SAS_OREJ_WRONG_DEST;
		break;
	case IO_XFER_ERROR_NAK_RECEIVED:
		FUNC1(pm8001_ha,
			FUNC6("IO_XFER_ERROR_NAK_RECEIVED\n"));
		ts->resp = SAS_TASK_COMPLETE;
		ts->stat = SAS_OPEN_REJECT;
		ts->open_rej_reason = SAS_OREJ_RSVD_RETRY;
		break;
	case IO_XFER_ERROR_ACK_NAK_TIMEOUT:
		FUNC1(pm8001_ha,
			FUNC6("IO_XFER_ERROR_ACK_NAK_TIMEOUT\n"));
		ts->resp = SAS_TASK_COMPLETE;
		ts->stat = SAS_NAK_R_ERR;
		break;
	case IO_XFER_ERROR_DMA:
		FUNC1(pm8001_ha,
		FUNC6("IO_XFER_ERROR_DMA\n"));
		ts->resp = SAS_TASK_COMPLETE;
		ts->stat = SAS_OPEN_REJECT;
		break;
	case IO_XFER_OPEN_RETRY_TIMEOUT:
		FUNC1(pm8001_ha,
			FUNC6("IO_XFER_OPEN_RETRY_TIMEOUT\n"));
		ts->resp = SAS_TASK_COMPLETE;
		ts->stat = SAS_OPEN_REJECT;
		ts->open_rej_reason = SAS_OREJ_RSVD_RETRY;
		break;
	case IO_XFER_ERROR_OFFSET_MISMATCH:
		FUNC1(pm8001_ha,
			FUNC6("IO_XFER_ERROR_OFFSET_MISMATCH\n"));
		ts->resp = SAS_TASK_COMPLETE;
		ts->stat = SAS_OPEN_REJECT;
		break;
	case IO_PORT_IN_RESET:
		FUNC1(pm8001_ha,
			FUNC6("IO_PORT_IN_RESET\n"));
		ts->resp = SAS_TASK_COMPLETE;
		ts->stat = SAS_OPEN_REJECT;
		break;
	case IO_DS_NON_OPERATIONAL:
		FUNC1(pm8001_ha,
			FUNC6("IO_DS_NON_OPERATIONAL\n"));
		ts->resp = SAS_TASK_COMPLETE;
		ts->stat = SAS_OPEN_REJECT;
		if (!t->uldd_task)
			FUNC5(pm8001_ha,
				pm8001_dev,
				IO_DS_NON_OPERATIONAL);
		break;
	case IO_DS_IN_RECOVERY:
		FUNC1(pm8001_ha,
			FUNC6("IO_DS_IN_RECOVERY\n"));
		ts->resp = SAS_TASK_COMPLETE;
		ts->stat = SAS_OPEN_REJECT;
		break;
	case IO_TM_TAG_NOT_FOUND:
		FUNC1(pm8001_ha,
			FUNC6("IO_TM_TAG_NOT_FOUND\n"));
		ts->resp = SAS_TASK_COMPLETE;
		ts->stat = SAS_OPEN_REJECT;
		break;
	case IO_SSP_EXT_IU_ZERO_LEN_ERROR:
		FUNC1(pm8001_ha,
			FUNC6("IO_SSP_EXT_IU_ZERO_LEN_ERROR\n"));
		ts->resp = SAS_TASK_COMPLETE;
		ts->stat = SAS_OPEN_REJECT;
		break;
	case IO_OPEN_CNX_ERROR_HW_RESOURCE_BUSY:
		FUNC1(pm8001_ha,
			FUNC6("IO_OPEN_CNX_ERROR_HW_RESOURCE_BUSY\n"));
		ts->resp = SAS_TASK_COMPLETE;
		ts->stat = SAS_OPEN_REJECT;
		ts->open_rej_reason = SAS_OREJ_RSVD_RETRY;
		break;
	default:
		FUNC1(pm8001_ha,
			FUNC6("Unknown status 0x%x\n", status));
		/* not allowed case. Therefore, return failed status */
		ts->resp = SAS_TASK_COMPLETE;
		ts->stat = SAS_OPEN_REJECT;
		break;
	}
	FUNC1(pm8001_ha,
		FUNC6("scsi_status = %x\n ",
		psspPayload->ssp_resp_iu.status));
	FUNC8(&t->task_state_lock, flags);
	t->task_state_flags &= ~SAS_TASK_STATE_PENDING;
	t->task_state_flags &= ~SAS_TASK_AT_INITIATOR;
	t->task_state_flags |= SAS_TASK_STATE_DONE;
	if (FUNC11((t->task_state_flags & SAS_TASK_STATE_ABORTED))) {
		FUNC9(&t->task_state_lock, flags);
		FUNC0(pm8001_ha, FUNC6("task 0x%p done with"
			" io_status 0x%x resp 0x%x "
			"stat 0x%x but aborted by upper layer!\n",
			t, status, ts->resp, ts->stat));
		FUNC4(pm8001_ha, t, ccb, tag);
	} else {
		FUNC9(&t->task_state_lock, flags);
		FUNC4(pm8001_ha, t, ccb, tag);
		FUNC3();/* in order to force CPU ordering */
		t->task_done(t);
	}
}