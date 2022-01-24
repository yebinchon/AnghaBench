#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sts_cont_entry_t ;
struct sts_entry_fx00 {scalar_t__ entry_status; int entry_type; } ;
struct TYPE_4__ {int /*<<< orphan*/  online; } ;
struct scsi_qla_host {TYPE_1__ flags; } ;
struct rsp_que {scalar_t__ ring_index; scalar_t__ length; int /*<<< orphan*/ * rsp_q_out; int /*<<< orphan*/  req; TYPE_2__* ring_ptr; TYPE_2__* ring; scalar_t__ rsp_pkt; } ;
struct ioctl_iocb_entry_fx00 {int dummy; } ;
struct abort_iocb_entry_fx00 {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  signature; } ;
typedef  TYPE_2__ response_t ;

/* Variables and functions */
#define  ABORT_IOCB_TYPE_FX00 132 
#define  IOCTL_IOSB_TYPE_FX00 131 
#define  MULTI_STATUS_TYPE_FX00 130 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ RESPONSE_PROCESSED ; 
#define  STATUS_CONT_TYPE_FX00 129 
#define  STATUS_TYPE_FX00 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct scsi_qla_host*,int,char*,int,scalar_t__) ; 
 int /*<<< orphan*/  ql_dbg_async ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_qla_host*,int /*<<< orphan*/ ,struct abort_iocb_entry_fx00*) ; 
 int /*<<< orphan*/  FUNC5 (struct scsi_qla_host*,struct rsp_que*,struct sts_entry_fx00*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (struct scsi_qla_host*,int /*<<< orphan*/ ,struct ioctl_iocb_entry_fx00*) ; 
 int /*<<< orphan*/  FUNC7 (struct scsi_qla_host*,struct rsp_que*,struct sts_entry_fx00*) ; 
 int /*<<< orphan*/  FUNC8 (struct rsp_que*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct scsi_qla_host*,struct rsp_que*,struct sts_entry_fx00*) ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static void
FUNC11(struct scsi_qla_host *vha,
	struct rsp_que *rsp)
{
	struct sts_entry_fx00 *pkt;
	response_t *lptr;

	if (!vha->flags.online)
		return;

	while (FUNC0(&(rsp->ring_ptr->signature)) !=
	    RESPONSE_PROCESSED) {
		lptr = rsp->ring_ptr;
		FUNC2(rsp->rsp_pkt, lptr, sizeof(rsp->rsp_pkt));
		pkt = (struct sts_entry_fx00 *)rsp->rsp_pkt;

		rsp->ring_index++;
		if (rsp->ring_index == rsp->length) {
			rsp->ring_index = 0;
			rsp->ring_ptr = rsp->ring;
		} else {
			rsp->ring_ptr++;
		}

		if (pkt->entry_status != 0 &&
		    pkt->entry_type != IOCTL_IOSB_TYPE_FX00) {
			FUNC5(vha, rsp,
			    (struct sts_entry_fx00 *)pkt, pkt->entry_status,
			    pkt->entry_type);
			goto next_iter;
			continue;
		}

		switch (pkt->entry_type) {
		case STATUS_TYPE_FX00:
			FUNC9(vha, rsp, pkt);
			break;

		case STATUS_CONT_TYPE_FX00:
			FUNC8(rsp, (sts_cont_entry_t *)pkt);
			break;

		case MULTI_STATUS_TYPE_FX00:
			FUNC7(vha, rsp, pkt);
			break;

		case ABORT_IOCB_TYPE_FX00:
			FUNC4(vha, rsp->req,
			   (struct abort_iocb_entry_fx00 *)pkt);
			break;

		case IOCTL_IOSB_TYPE_FX00:
			FUNC6(vha, rsp->req,
			    (struct ioctl_iocb_entry_fx00 *)pkt);
			break;
		default:
			/* Type Not Supported. */
			FUNC3(ql_dbg_async, vha, 0x5081,
			    "Received unknown response pkt type %x "
			    "entry status=%x.\n",
			    pkt->entry_type, pkt->entry_status);
			break;
		}
next_iter:
		FUNC1(&lptr->signature, RESPONSE_PROCESSED);
		FUNC10();
	}

	/* Adjust ring index */
	FUNC1(rsp->rsp_q_out, rsp->ring_index);
}