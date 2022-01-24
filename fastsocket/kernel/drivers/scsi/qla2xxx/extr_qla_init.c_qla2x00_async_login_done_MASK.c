#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct scsi_qla_host {int /*<<< orphan*/  dpc_flags; } ;
struct TYPE_10__ {int flags; int loop_id; } ;
typedef  TYPE_1__ fc_port_t ;

/* Variables and functions */
 int FCF_ASYNC_SENT ; 
 int FCF_FCP2_DEVICE ; 
 int FCF_LOGIN_NEEDED ; 
#define  MBS_COMMAND_COMPLETE 131 
#define  MBS_COMMAND_ERROR 130 
#define  MBS_LOOP_ID_USED 129 
#define  MBS_PORT_ID_USED 128 
 int QLA_LOGIO_LOGIN_RETRIED ; 
 int QLA_NOT_LOGGED_IN ; 
 int QLA_SUCCESS ; 
 int /*<<< orphan*/  RELOGIN_NEEDED ; 
 int FUNC0 (struct scsi_qla_host*,TYPE_1__*) ; 
 int FUNC1 (struct scsi_qla_host*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_qla_host*,TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_qla_host*,TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_qla_host*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct scsi_qla_host*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct scsi_qla_host*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC8(struct scsi_qla_host *vha, fc_port_t *fcport,
    uint16_t *data)
{
	int rval;

	switch (data[0]) {
	case MBS_COMMAND_COMPLETE:
		/*
		 * Driver must validate login state - If PRLI not complete,
		 * force a relogin attempt via implicit LOGO, PLOGI, and PRLI
		 * requests.
		 */
		rval = FUNC1(vha, fcport, 0);
		if (rval == QLA_NOT_LOGGED_IN) {
			fcport->flags &= ~FCF_ASYNC_SENT;
			fcport->flags |= FCF_LOGIN_NEEDED;
			FUNC7(RELOGIN_NEEDED, &vha->dpc_flags);
			break;
		}

		if (rval != QLA_SUCCESS) {
			FUNC5(vha, fcport, NULL);
			FUNC4(vha, fcport, NULL);
			break;
		}
		if (fcport->flags & FCF_FCP2_DEVICE) {
			FUNC3(vha, fcport, data);
			break;
		}
		FUNC6(vha, fcport);
		break;
	case MBS_COMMAND_ERROR:
		fcport->flags &= ~FCF_ASYNC_SENT;
		if (data[1] & QLA_LOGIO_LOGIN_RETRIED)
			FUNC7(RELOGIN_NEEDED, &vha->dpc_flags);
		else
			FUNC2(vha, fcport, 1, 0);
		break;
	case MBS_PORT_ID_USED:
		fcport->loop_id = data[1];
		FUNC5(vha, fcport, NULL);
		FUNC4(vha, fcport, NULL);
		break;
	case MBS_LOOP_ID_USED:
		fcport->loop_id++;
		rval = FUNC0(vha, fcport);
		if (rval != QLA_SUCCESS) {
			fcport->flags &= ~FCF_ASYNC_SENT;
			FUNC2(vha, fcport, 1, 0);
			break;
		}
		FUNC4(vha, fcport, NULL);
		break;
	}
	return;
}