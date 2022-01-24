#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct zfcp_unit {int /*<<< orphan*/  device; TYPE_5__* port; int /*<<< orphan*/  handle; int /*<<< orphan*/  status; } ;
struct zfcp_qdio {int /*<<< orphan*/  req_q_lock; TYPE_3__* adapter; } ;
struct zfcp_fsf_req {TYPE_8__* qtcb; int /*<<< orphan*/  queue_req; int /*<<< orphan*/  handler; struct zfcp_unit* data; int /*<<< orphan*/  status; } ;
struct qdio_buffer_element {int /*<<< orphan*/  eflags; int /*<<< orphan*/  sflags; } ;
struct fcp_cmnd {int dummy; } ;
struct TYPE_14__ {int /*<<< orphan*/  fcp_cmnd; int /*<<< orphan*/  fcp_cmnd_length; int /*<<< orphan*/  service_class; int /*<<< orphan*/  data_direction; } ;
struct TYPE_15__ {TYPE_6__ io; } ;
struct TYPE_12__ {int /*<<< orphan*/  port_handle; int /*<<< orphan*/  lun_handle; } ;
struct TYPE_16__ {TYPE_7__ bottom; TYPE_4__ header; } ;
struct TYPE_13__ {int /*<<< orphan*/  handle; TYPE_1__* adapter; } ;
struct TYPE_10__ {int /*<<< orphan*/  scsi_req; } ;
struct TYPE_11__ {TYPE_2__ pool; } ;
struct TYPE_9__ {struct zfcp_qdio* qdio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FCP_CMND_LEN ; 
 int /*<<< orphan*/  FSF_CLASS_3 ; 
 int /*<<< orphan*/  FSF_DATADIR_CMND ; 
 int /*<<< orphan*/  FSF_QTCB_FCP_CMND ; 
 scalar_t__ FUNC0 (struct zfcp_fsf_req*) ; 
 int /*<<< orphan*/  SBAL_EFLAGS_LAST_ENTRY ; 
 int /*<<< orphan*/  SBAL_SFLAGS0_TYPE_WRITE ; 
 int /*<<< orphan*/  ZFCP_SCSI_ER_TIMEOUT ; 
 int ZFCP_STATUS_COMMON_UNBLOCKED ; 
 int /*<<< orphan*/  ZFCP_STATUS_FSFREQ_TASK_MANAGEMENT ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct fcp_cmnd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct zfcp_fsf_req* FUNC6 (struct zfcp_qdio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct zfcp_fsf_req*) ; 
 scalar_t__ FUNC8 (struct zfcp_qdio*) ; 
 int /*<<< orphan*/  FUNC9 (struct zfcp_fsf_req*) ; 
 int /*<<< orphan*/  zfcp_fsf_send_fcp_command_handler ; 
 int /*<<< orphan*/  FUNC10 (struct zfcp_fsf_req*,int /*<<< orphan*/ ) ; 
 struct qdio_buffer_element* FUNC11 (struct zfcp_qdio*,int /*<<< orphan*/ *) ; 

struct zfcp_fsf_req *FUNC12(struct zfcp_unit *unit, u8 tm_flags)
{
	struct qdio_buffer_element *sbale;
	struct zfcp_fsf_req *req = NULL;
	struct fcp_cmnd *fcp_cmnd;
	struct zfcp_qdio *qdio = unit->port->adapter->qdio;

	if (FUNC4(!(FUNC1(&unit->status) &
		       ZFCP_STATUS_COMMON_UNBLOCKED)))
		return NULL;

	FUNC2(&qdio->req_q_lock);
	if (FUNC8(qdio))
		goto out;

	req = FUNC6(qdio, FSF_QTCB_FCP_CMND,
				  qdio->adapter->pool.scsi_req);

	if (FUNC0(req)) {
		req = NULL;
		goto out;
	}

	req->status |= ZFCP_STATUS_FSFREQ_TASK_MANAGEMENT;
	req->data = unit;
	req->handler = zfcp_fsf_send_fcp_command_handler;
	req->qtcb->header.lun_handle = unit->handle;
	req->qtcb->header.port_handle = unit->port->handle;
	req->qtcb->bottom.io.data_direction = FSF_DATADIR_CMND;
	req->qtcb->bottom.io.service_class = FSF_CLASS_3;
	req->qtcb->bottom.io.fcp_cmnd_length = FCP_CMND_LEN;

	sbale = FUNC11(qdio, &req->queue_req);
	sbale[0].sflags |= SBAL_SFLAGS0_TYPE_WRITE;
	sbale[1].eflags |= SBAL_EFLAGS_LAST_ENTRY;

	fcp_cmnd = (struct fcp_cmnd *) &req->qtcb->bottom.io.fcp_cmnd;
	FUNC5(fcp_cmnd, unit->device, tm_flags);

	FUNC10(req, ZFCP_SCSI_ER_TIMEOUT);
	if (!FUNC9(req))
		goto out;

	FUNC7(req);
	req = NULL;
out:
	FUNC3(&qdio->req_q_lock);
	return req;
}