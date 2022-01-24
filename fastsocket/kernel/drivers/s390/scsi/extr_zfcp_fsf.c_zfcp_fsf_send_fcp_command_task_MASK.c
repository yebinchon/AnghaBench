#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct zfcp_unit {TYPE_4__* port; int /*<<< orphan*/  handle; int /*<<< orphan*/  status; } ;
struct TYPE_8__ {int /*<<< orphan*/  count; } ;
struct zfcp_qdio {int /*<<< orphan*/  req_q_lock; int /*<<< orphan*/  req_q_full; TYPE_1__ req_q; } ;
struct zfcp_fsf_req {int /*<<< orphan*/  queue_req; TYPE_7__* qtcb; int /*<<< orphan*/  handler; struct scsi_cmnd* data; struct zfcp_unit* unit; int /*<<< orphan*/  status; scalar_t__ req_id; } ;
struct TYPE_9__ {int /*<<< orphan*/  scsi_req; } ;
struct zfcp_adapter {struct zfcp_qdio* qdio; TYPE_2__ pool; } ;
struct scsi_cmnd {scalar_t__ sc_data_direction; unsigned char* host_scribble; TYPE_5__* device; } ;
struct fsf_qtcb_bottom_io {int ref_tag_value; int /*<<< orphan*/  prot_data_length; int /*<<< orphan*/  fcp_cmnd; int /*<<< orphan*/  data_direction; int /*<<< orphan*/  data_block_length; int /*<<< orphan*/  fcp_cmnd_length; int /*<<< orphan*/  service_class; } ;
struct fcp_cmnd {int dummy; } ;
struct TYPE_13__ {struct fsf_qtcb_bottom_io io; } ;
struct TYPE_10__ {int /*<<< orphan*/  port_handle; int /*<<< orphan*/  lun_handle; } ;
struct TYPE_14__ {TYPE_6__ bottom; TYPE_3__ header; } ;
struct TYPE_12__ {int /*<<< orphan*/  sector_size; } ;
struct TYPE_11__ {int /*<<< orphan*/  handle; struct zfcp_adapter* adapter; } ;

/* Variables and functions */
 scalar_t__ DMA_TO_DEVICE ; 
 int EBUSY ; 
 int EIO ; 
 int /*<<< orphan*/  FCP_CMND_LEN ; 
 int /*<<< orphan*/  FSF_CLASS_3 ; 
 int /*<<< orphan*/  FSF_MAX_SBALS_PER_REQ ; 
 int /*<<< orphan*/  FSF_QTCB_FCP_CMND ; 
 scalar_t__ FUNC0 (struct zfcp_fsf_req*) ; 
 int FUNC1 (struct zfcp_fsf_req*) ; 
 int /*<<< orphan*/  SBAL_SFLAGS0_TYPE_READ ; 
 int /*<<< orphan*/  SBAL_SFLAGS0_TYPE_WRITE ; 
 scalar_t__ SCSI_PROT_NORMAL ; 
 int ZFCP_STATUS_COMMON_UNBLOCKED ; 
 int /*<<< orphan*/  ZFCP_STATUS_FSFREQ_CLEANUP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct scsi_cmnd*) ; 
 scalar_t__ FUNC5 (struct scsi_cmnd*) ; 
 scalar_t__ FUNC6 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC7 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC8 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int) ; 
 scalar_t__ FUNC12 (struct zfcp_adapter*) ; 
 int /*<<< orphan*/  FUNC13 (struct fcp_cmnd*,struct scsi_cmnd*) ; 
 struct zfcp_fsf_req* FUNC14 (struct zfcp_qdio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct zfcp_fsf_req*) ; 
 int FUNC16 (struct zfcp_fsf_req*) ; 
 int /*<<< orphan*/  zfcp_fsf_send_fcp_command_handler ; 
 scalar_t__ FUNC17 (struct scsi_cmnd*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int FUNC19 (struct zfcp_qdio*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct zfcp_qdio*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (struct zfcp_qdio*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (struct zfcp_qdio*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (struct zfcp_unit*) ; 
 int /*<<< orphan*/  FUNC24 (struct zfcp_unit*) ; 

int FUNC25(struct zfcp_unit *unit,
				   struct scsi_cmnd *scsi_cmnd)
{
	struct zfcp_fsf_req *req;
	struct fcp_cmnd *fcp_cmnd;
	u8 sbtype = SBAL_SFLAGS0_TYPE_READ;
	int retval = -EIO;
	struct zfcp_adapter *adapter = unit->port->adapter;
	struct zfcp_qdio *qdio = adapter->qdio;
	struct fsf_qtcb_bottom_io *io;

	if (FUNC11(!(FUNC3(&unit->status) &
		       ZFCP_STATUS_COMMON_UNBLOCKED)))
		return -EBUSY;

	FUNC9(&qdio->req_q_lock);
	if (FUNC3(&qdio->req_q.count) <= 0) {
		FUNC2(&qdio->req_q_full);
		goto out;
	}

	if (scsi_cmnd->sc_data_direction == DMA_TO_DEVICE)
		sbtype = SBAL_SFLAGS0_TYPE_WRITE;

	req = FUNC14(qdio, FSF_QTCB_FCP_CMND,
				  adapter->pool.scsi_req);

	if (FUNC0(req)) {
		retval = FUNC1(req);
		goto out;
	}

	scsi_cmnd->host_scribble = (unsigned char *) req->req_id;

	io = &req->qtcb->bottom.io;
	req->status |= ZFCP_STATUS_FSFREQ_CLEANUP;
	FUNC23(unit);
	req->unit = unit;
	req->data = scsi_cmnd;
	req->handler = zfcp_fsf_send_fcp_command_handler;
	req->qtcb->header.lun_handle = unit->handle;
	req->qtcb->header.port_handle = unit->port->handle;
	io->service_class = FSF_CLASS_3;
	io->fcp_cmnd_length = FCP_CMND_LEN;

	if (FUNC5(scsi_cmnd) != SCSI_PROT_NORMAL) {
		io->data_block_length = scsi_cmnd->device->sector_size;
		io->ref_tag_value = FUNC4(scsi_cmnd) & 0xFFFFFFFF;
	}

	if (FUNC17(scsi_cmnd, &io->data_direction))
		goto failed_scsi_cmnd;

	fcp_cmnd = (struct fcp_cmnd *) &req->qtcb->bottom.io.fcp_cmnd;
	FUNC13(fcp_cmnd, scsi_cmnd);

	if (FUNC6(scsi_cmnd)) {
		FUNC20(qdio, &req->queue_req,
				       FUNC6(scsi_cmnd));
		retval = FUNC19(qdio, &req->queue_req,
						 sbtype,
						 FUNC7(scsi_cmnd),
						 FSF_MAX_SBALS_PER_REQ);
		if (retval)
			goto failed_scsi_cmnd;
		io->prot_data_length = FUNC18(
						FUNC7(scsi_cmnd));
	}

	retval = FUNC19(qdio, &req->queue_req, sbtype,
					 FUNC8(scsi_cmnd),
					 FSF_MAX_SBALS_PER_REQ);
	if (FUNC11(retval))
		goto failed_scsi_cmnd;

	FUNC21(adapter->qdio, &req->queue_req);
	if (FUNC12(adapter))
		FUNC22(qdio, &req->queue_req);

	retval = FUNC16(req);
	if (FUNC11(retval))
		goto failed_scsi_cmnd;

	goto out;

failed_scsi_cmnd:
	FUNC24(unit);
	FUNC15(req);
	scsi_cmnd->host_scribble = NULL;
out:
	FUNC10(&qdio->req_q_lock);
	return retval;
}