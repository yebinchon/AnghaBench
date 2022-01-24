#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint16_t ;
struct TYPE_16__ {int domain; int area; int al_pa; int rsvd_1; } ;
struct TYPE_17__ {TYPE_3__ b; } ;
struct TYPE_18__ {TYPE_4__ d_id; } ;
typedef  TYPE_5__ sw_info_t ;
struct TYPE_14__ {int /*<<< orphan*/ * param; } ;
struct TYPE_15__ {int* gid_data; TYPE_1__ cmd; } ;
struct sns_cmd_pkt {TYPE_2__ p; } ;
struct qla_hw_data {int max_fibre_devices; int /*<<< orphan*/  sns_cmd_dma; } ;
struct TYPE_19__ {struct qla_hw_data* hw; } ;
typedef  TYPE_6__ scsi_qla_host_t ;

/* Variables and functions */
 int BIT_7 ; 
 int /*<<< orphan*/  GID_PT_CMD ; 
 int GID_PT_SNS_CMD_SIZE ; 
 int /*<<< orphan*/  GID_PT_SNS_SCMD_LEN ; 
 int /*<<< orphan*/  NS_NX_PORT_TYPE ; 
 int QLA_FUNCTION_FAILED ; 
 int QLA_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,TYPE_6__*,int,char*,...) ; 
 scalar_t__ ql_dbg_buffer ; 
 scalar_t__ ql_dbg_disc ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,TYPE_6__*,int,int*,int) ; 
 int FUNC2 (TYPE_6__*) ; 
 struct sns_cmd_pkt* FUNC3 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (TYPE_6__*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int
FUNC5(scsi_qla_host_t *vha, sw_info_t *list)
{
	int		rval;
	struct qla_hw_data *ha = vha->hw;
	uint16_t	i;
	uint8_t		*entry;
	struct sns_cmd_pkt	*sns_cmd;
	uint16_t gid_pt_sns_data_size;

	gid_pt_sns_data_size = FUNC2(vha);

	/* Issue GID_PT. */
	/* Prepare SNS command request. */
	sns_cmd = FUNC3(vha, GID_PT_CMD, GID_PT_SNS_SCMD_LEN,
	    gid_pt_sns_data_size);

	/* Prepare SNS command arguments -- port_type. */
	sns_cmd->p.cmd.param[0] = NS_NX_PORT_TYPE;

	/* Execute SNS command. */
	rval = FUNC4(vha, ha->sns_cmd_dma, GID_PT_SNS_CMD_SIZE / 2,
	    sizeof(struct sns_cmd_pkt));
	if (rval != QLA_SUCCESS) {
		/*EMPTY*/
		FUNC0(ql_dbg_disc, vha, 0x206d,
		    "GID_PT Send SNS failed (%d).\n", rval);
	} else if (sns_cmd->p.gid_data[8] != 0x80 ||
	    sns_cmd->p.gid_data[9] != 0x02) {
		FUNC0(ql_dbg_disc, vha, 0x202f,
		    "GID_PT failed, rejected request, gid_rsp:\n");
		FUNC1(ql_dbg_disc + ql_dbg_buffer, vha, 0x2081,
		    sns_cmd->p.gid_data, 16);
		rval = QLA_FUNCTION_FAILED;
	} else {
		/* Set port IDs in switch info list. */
		for (i = 0; i < ha->max_fibre_devices; i++) {
			entry = &sns_cmd->p.gid_data[(i * 4) + 16];
			list[i].d_id.b.domain = entry[1];
			list[i].d_id.b.area = entry[2];
			list[i].d_id.b.al_pa = entry[3];

			/* Last one exit. */
			if (entry[0] & BIT_7) {
				list[i].d_id.b.rsvd_1 = entry[0];
				break;
			}
		}

		/*
		 * If we've used all available slots, then the switch is
		 * reporting back more devices that we can handle with this
		 * single call.  Return a failed status, and let GA_NXT handle
		 * the overload.
		 */
		if (i == ha->max_fibre_devices)
			rval = QLA_FUNCTION_FAILED;
	}

	return (rval);
}