#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
struct scsi_qla_host {int /*<<< orphan*/  host_no; } ;
struct scsi_cmnd {scalar_t__ sense_buffer; int result; TYPE_2__* device; } ;
struct rsp_que {TYPE_3__* status_srb; } ;
struct TYPE_10__ {TYPE_1__* fcport; } ;
typedef  TYPE_3__ srb_t ;
struct TYPE_9__ {int /*<<< orphan*/  lun; int /*<<< orphan*/  id; } ;
struct TYPE_8__ {struct scsi_qla_host* vha; } ;

/* Variables and functions */
 struct scsi_cmnd* FUNC0 (TYPE_3__*) ; 
 scalar_t__ SCSI_SENSE_BUFFERSIZE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,struct scsi_qla_host*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct scsi_cmnd*) ; 
 scalar_t__ ql_dbg_buffer ; 
 scalar_t__ ql_dbg_io ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,struct scsi_qla_host*,int,scalar_t__,scalar_t__) ; 

__attribute__((used)) static inline void
FUNC6(srb_t *sp, uint8_t *sense_data, uint32_t par_sense_len,
    uint32_t sense_len, struct rsp_que *rsp, int res)
{
	struct scsi_qla_host *vha = sp->fcport->vha;
	struct scsi_cmnd *cp = FUNC0(sp);
	uint32_t track_sense_len;

	if (sense_len >= SCSI_SENSE_BUFFERSIZE)
		sense_len = SCSI_SENSE_BUFFERSIZE;

	FUNC1(sp, sense_len);
	FUNC2(sp, cp->sense_buffer);
	track_sense_len = sense_len;

	if (sense_len > par_sense_len)
		sense_len = par_sense_len;

	FUNC3(cp->sense_buffer, sense_data, sense_len);

	FUNC2(sp, cp->sense_buffer + sense_len);
	track_sense_len -= sense_len;
	FUNC1(sp, track_sense_len);

	if (track_sense_len != 0) {
		rsp->status_srb = sp;
		cp->result = res;
	}

	if (sense_len) {
		FUNC4(ql_dbg_io + ql_dbg_buffer, vha, 0x301c,
		    "Check condition Sense data, nexus%ld:%d:%d cmd=%p.\n",
		    sp->fcport->vha->host_no, cp->device->id, cp->device->lun,
		    cp);
		FUNC5(ql_dbg_io + ql_dbg_buffer, vha, 0x302b,
		    cp->sense_buffer, sense_len);
	}
}