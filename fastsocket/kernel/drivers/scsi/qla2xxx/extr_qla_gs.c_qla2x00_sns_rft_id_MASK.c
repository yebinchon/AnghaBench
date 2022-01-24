#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int* param; } ;
struct TYPE_14__ {int* rft_data; TYPE_3__ cmd; } ;
struct sns_cmd_pkt {TYPE_4__ p; } ;
struct qla_hw_data {int /*<<< orphan*/  sns_cmd_dma; } ;
struct TYPE_11__ {int al_pa; int area; int domain; } ;
struct TYPE_12__ {TYPE_1__ b; } ;
struct TYPE_15__ {TYPE_2__ d_id; struct qla_hw_data* hw; } ;
typedef  TYPE_5__ scsi_qla_host_t ;

/* Variables and functions */
 int QLA_FUNCTION_FAILED ; 
 int QLA_SUCCESS ; 
 int /*<<< orphan*/  RFT_ID_CMD ; 
 int RFT_ID_SNS_CMD_SIZE ; 
 int /*<<< orphan*/  RFT_ID_SNS_DATA_SIZE ; 
 int /*<<< orphan*/  RFT_ID_SNS_SCMD_LEN ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,TYPE_5__*,int,char*,...) ; 
 scalar_t__ ql_dbg_buffer ; 
 scalar_t__ ql_dbg_disc ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,TYPE_5__*,int,int*,int) ; 
 struct sns_cmd_pkt* FUNC2 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_5__*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int
FUNC4(scsi_qla_host_t *vha)
{
	int		rval;
	struct qla_hw_data *ha = vha->hw;
	struct sns_cmd_pkt	*sns_cmd;

	/* Issue RFT_ID. */
	/* Prepare SNS command request. */
	sns_cmd = FUNC2(vha, RFT_ID_CMD, RFT_ID_SNS_SCMD_LEN,
	    RFT_ID_SNS_DATA_SIZE);

	/* Prepare SNS command arguments -- port_id, FC-4 types */
	sns_cmd->p.cmd.param[0] = vha->d_id.b.al_pa;
	sns_cmd->p.cmd.param[1] = vha->d_id.b.area;
	sns_cmd->p.cmd.param[2] = vha->d_id.b.domain;

	sns_cmd->p.cmd.param[5] = 0x01;			/* FCP-3 */

	/* Execute SNS command. */
	rval = FUNC3(vha, ha->sns_cmd_dma, RFT_ID_SNS_CMD_SIZE / 2,
	    sizeof(struct sns_cmd_pkt));
	if (rval != QLA_SUCCESS) {
		/*EMPTY*/
		FUNC0(ql_dbg_disc, vha, 0x2060,
		    "RFT_ID Send SNS failed (%d).\n", rval);
	} else if (sns_cmd->p.rft_data[8] != 0x80 ||
	    sns_cmd->p.rft_data[9] != 0x02) {
		FUNC0(ql_dbg_disc + ql_dbg_buffer, vha, 0x2083,
		    "RFT_ID failed, rejected request rft_rsp:\n");
		FUNC1(ql_dbg_disc + ql_dbg_buffer, vha, 0x2080,
		    sns_cmd->p.rft_data, 16);
		rval = QLA_FUNCTION_FAILED;
	} else {
		FUNC0(ql_dbg_disc, vha, 0x2073,
		    "RFT_ID exiting normally.\n");
	}

	return (rval);
}