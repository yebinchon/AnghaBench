#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_4__ {int fw_tgt_reported; } ;
struct scsi_qla_host {int /*<<< orphan*/  host; int /*<<< orphan*/  device_flags; int /*<<< orphan*/  dpc_flags; TYPE_1__ flags; int /*<<< orphan*/  loop_state; int /*<<< orphan*/  loop_down_timer; } ;
struct TYPE_5__ {int evtcode; int* mbx; } ;
struct TYPE_6__ {TYPE_2__ aenfx; } ;
struct qla_work_evt {TYPE_3__ u; } ;

/* Variables and functions */
 int /*<<< orphan*/  DFLG_NO_CABLE ; 
 int FCH_EVT_LINKDOWN ; 
 int FCH_EVT_LINKUP ; 
 int FCH_EVT_VENDOR_UNIQUE ; 
 int /*<<< orphan*/  LOOP_RESYNC_NEEDED ; 
 int /*<<< orphan*/  LOOP_UP ; 
#define  QLAFX00_MBA_LINK_DOWN 130 
#define  QLAFX00_MBA_LINK_UP 129 
#define  QLAFX00_MBA_PORT_UPDATE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_qla_host*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC5 (struct scsi_qla_host*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC7(struct scsi_qla_host *vha, struct qla_work_evt *evt)
{
	int rval = 0;
	uint32_t aen_code, aen_data;

	aen_code = FCH_EVT_VENDOR_UNIQUE;
	aen_data = evt->u.aenfx.evtcode;

	switch (evt->u.aenfx.evtcode) {
	case QLAFX00_MBA_PORT_UPDATE:		/* Port database update */
		if (evt->u.aenfx.mbx[1] == 0) {
			if (evt->u.aenfx.mbx[2] == 1) {
				if (!vha->flags.fw_tgt_reported)
					vha->flags.fw_tgt_reported = 1;
				FUNC0(&vha->loop_down_timer, 0);
				FUNC0(&vha->loop_state, LOOP_UP);
				FUNC6(LOOP_RESYNC_NEEDED, &vha->dpc_flags);
				FUNC4(vha);
			} else if (evt->u.aenfx.mbx[2] == 2) {
				FUNC5(vha, evt->u.aenfx.mbx[3]);
			}
		} else if (evt->u.aenfx.mbx[1] == 0xffff) {
			if (evt->u.aenfx.mbx[2] == 1) {
				if (!vha->flags.fw_tgt_reported)
					vha->flags.fw_tgt_reported = 1;
				FUNC6(LOOP_RESYNC_NEEDED, &vha->dpc_flags);
			} else if (evt->u.aenfx.mbx[2] == 2) {
				vha->device_flags |= DFLG_NO_CABLE;
				FUNC3(vha, 1);
			}
		}
		break;
	case QLAFX00_MBA_LINK_UP:
		aen_code = FCH_EVT_LINKUP;
		aen_data = 0;
		break;
	case QLAFX00_MBA_LINK_DOWN:
		aen_code = FCH_EVT_LINKDOWN;
		aen_data = 0;
		break;
	}

	FUNC2(vha->host, FUNC1(),
	    aen_code, aen_data);

	return rval;
}