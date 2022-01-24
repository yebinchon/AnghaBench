#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
struct scsi_qla_host {struct req_que* req; struct qla_hw_data* hw; } ;
struct req_que {TYPE_1__** outstanding_cmds; } ;
struct qla_hw_data {int /*<<< orphan*/  hardware_lock; } ;
struct TYPE_5__ {TYPE_2__* fcport; } ;
typedef  TYPE_1__ srb_t ;
struct TYPE_6__ {struct scsi_qla_host* vha; } ;
typedef  TYPE_2__ fc_port_t ;

/* Variables and functions */
 size_t DEFAULT_OUTSTANDING_COMMANDS ; 
 int QLA_FUNCTION_FAILED ; 
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

int
FUNC3(srb_t *sp)
{
	unsigned long   flags = 0;

	uint32_t	handle;
	fc_port_t	*fcport = sp->fcport;
	struct scsi_qla_host *vha = fcport->vha;
	struct qla_hw_data *ha = vha->hw;
	struct req_que *req = vha->req;

	FUNC1(&ha->hardware_lock, flags);
	for (handle = 1; handle < DEFAULT_OUTSTANDING_COMMANDS; handle++) {
		if (req->outstanding_cmds[handle] == sp)
			break;
	}
	FUNC2(&ha->hardware_lock, flags);
	if (handle == DEFAULT_OUTSTANDING_COMMANDS) {
		/* Command not found. */
		return QLA_FUNCTION_FAILED;
	}
	return FUNC0(sp);
}