#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct TYPE_5__ {int /*<<< orphan*/  status; } ;
struct qlcnic_hardware_context {int /*<<< orphan*/  mbx_lock; TYPE_1__ idc; } ;
struct TYPE_7__ {scalar_t__* arg; int num; } ;
struct TYPE_6__ {int* arg; } ;
struct qlcnic_cmd_args {TYPE_3__ req; TYPE_2__ rsp; } ;
struct qlcnic_adapter {struct qlcnic_hardware_context* ahw; TYPE_4__* pdev; } ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct qlcnic_adapter*,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  QLCNIC_CLR_OWNER ; 
 scalar_t__ QLCNIC_CMD_CONFIG_MAC_VLAN ; 
 int /*<<< orphan*/  QLCNIC_FW_MBX_CTRL ; 
 int /*<<< orphan*/  QLCNIC_HOST_MBX_CTRL ; 
 scalar_t__ QLCNIC_MBX_ASYNC_EVENT ; 
 int /*<<< orphan*/  FUNC2 (struct qlcnic_hardware_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct qlcnic_hardware_context*,int) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
#define  QLCNIC_MBX_PORT_RSP_OK 129 
 scalar_t__ FUNC5 (scalar_t__) ; 
#define  QLCNIC_MBX_RSP_OK 128 
 int FUNC6 (scalar_t__) ; 
 scalar_t__ QLCNIC_RCODE_SUCCESS ; 
 scalar_t__ QLCNIC_RCODE_TIMEOUT ; 
 int /*<<< orphan*/  QLCNIC_SET_OWNER ; 
 scalar_t__ FUNC7 (struct qlcnic_hardware_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct qlcnic_hardware_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QLC_83XX_MBX_READY ; 
 int /*<<< orphan*/  FUNC9 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ; 
 scalar_t__ FUNC13 (struct qlcnic_adapter*) ; 
 scalar_t__ FUNC14 (struct qlcnic_adapter*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC15 (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__,int /*<<< orphan*/ ) ; 

int FUNC21(struct qlcnic_adapter *adapter,
		       struct qlcnic_cmd_args *cmd)
{
	int i;
	u16 opcode;
	u8 mbx_err_code;
	unsigned long flags;
	struct qlcnic_hardware_context *ahw = adapter->ahw;
	u32 rsp, mbx_val, fw_data, rsp_num, mbx_cmd, wait_time = 0;

	opcode = FUNC0(cmd->req.arg[0]);
	if (!FUNC19(QLC_83XX_MBX_READY, &adapter->ahw->idc.status)) {
		FUNC11(&adapter->pdev->dev,
			 "Mailbox cmd attempted, 0x%x\n", opcode);
		FUNC11(&adapter->pdev->dev, "Mailbox detached\n");
		return 0;
	}

	FUNC17(&adapter->ahw->mbx_lock, flags);
	mbx_val = FUNC7(ahw, QLCNIC_HOST_MBX_CTRL);

	if (mbx_val) {
		FUNC1(adapter, DRV,
		      "Mailbox cmd attempted, 0x%x\n", opcode);
		FUNC1(adapter, DRV,
		      "Mailbox not available, 0x%x, collect FW dump\n",
		      mbx_val);
		cmd->rsp.arg[0] = QLCNIC_RCODE_TIMEOUT;
		FUNC18(&adapter->ahw->mbx_lock, flags);
		return cmd->rsp.arg[0];
	}

	/* Fill in mailbox registers */
	mbx_cmd = cmd->req.arg[0];
	FUNC20(mbx_cmd, FUNC3(ahw, 0));
	for (i = 1; i < cmd->req.num; i++)
		FUNC20(cmd->req.arg[i], FUNC3(ahw, i));

	/* Signal FW about the impending command */
	FUNC8(ahw, QLCNIC_HOST_MBX_CTRL, QLCNIC_SET_OWNER);
poll:
	rsp = FUNC14(adapter, &wait_time);
	if (rsp != QLCNIC_RCODE_TIMEOUT) {
		/* Get the FW response data */
		fw_data = FUNC16(FUNC2(ahw, 0));
		if (fw_data &  QLCNIC_MBX_ASYNC_EVENT) {
			FUNC9(adapter);
			goto poll;
		}
		mbx_err_code = FUNC6(fw_data);
		rsp_num = FUNC4(fw_data);
		opcode = FUNC5(fw_data);
		FUNC12(adapter, cmd);

		switch (mbx_err_code) {
		case QLCNIC_MBX_RSP_OK:
		case QLCNIC_MBX_PORT_RSP_OK:
			rsp = QLCNIC_RCODE_SUCCESS;
			break;
		default:
			if (opcode == QLCNIC_CMD_CONFIG_MAC_VLAN) {
				rsp = FUNC13(adapter);
				if (!rsp)
					goto out;
			}
			FUNC10(&adapter->pdev->dev,
				"MBX command 0x%x failed with err:0x%x\n",
				opcode, mbx_err_code);
			rsp = mbx_err_code;
			FUNC15(adapter, cmd);
			break;
		}
		goto out;
	}

	FUNC10(&adapter->pdev->dev, "MBX command 0x%x timed out\n",
		FUNC5(mbx_cmd));
	rsp = QLCNIC_RCODE_TIMEOUT;
out:
	/* clear fw mbx control register */
	FUNC8(ahw, QLCNIC_FW_MBX_CTRL, QLCNIC_CLR_OWNER);
	FUNC18(&adapter->ahw->mbx_lock, flags);
	return rsp;
}