#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_3__ {int /*<<< orphan*/  status; } ;
struct qlcnic_hardware_context {int fw_hal_version; int /*<<< orphan*/  mbx_lock; TYPE_1__ idc; } ;
struct qlcnic_bc_hdr {int /*<<< orphan*/  cmd_op; } ;
struct qlcnic_adapter {struct qlcnic_hardware_context* ahw; TYPE_2__* pdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV ; 
 int /*<<< orphan*/  FUNC0 (struct qlcnic_adapter*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QLCNIC_CLR_OWNER ; 
 int /*<<< orphan*/  QLCNIC_CMD_CONFIG_MAC_VLAN ; 
 int /*<<< orphan*/  QLCNIC_FW_MBX_CTRL ; 
 int /*<<< orphan*/  QLCNIC_HOST_MBX_CTRL ; 
 int QLCNIC_MBX_ASYNC_EVENT ; 
 int /*<<< orphan*/  FUNC1 (struct qlcnic_hardware_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qlcnic_hardware_context*,int) ; 
 int FUNC3 (int) ; 
#define  QLCNIC_MBX_PORT_RSP_OK 129 
 int /*<<< orphan*/  FUNC4 (int) ; 
#define  QLCNIC_MBX_RSP_OK 128 
 int FUNC5 (int) ; 
 int QLCNIC_RCODE_SUCCESS ; 
 int QLCNIC_RCODE_TIMEOUT ; 
 int /*<<< orphan*/  QLCNIC_SET_OWNER ; 
 int FUNC6 (struct qlcnic_hardware_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct qlcnic_hardware_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QLC_83XX_MBX_READY ; 
 int /*<<< orphan*/  FUNC8 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC11 (struct qlcnic_adapter*) ; 
 int FUNC12 (struct qlcnic_adapter*,int*) ; 
 scalar_t__ FUNC13 (struct qlcnic_adapter*) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC19(struct qlcnic_adapter *adapter, u32 *hdr,
				    u32 *pay, u8 pci_func, u8 size)
{
	u32 rsp, mbx_val, fw_data, rsp_num, mbx_cmd, val, wait_time = 0;
	struct qlcnic_hardware_context *ahw = adapter->ahw;
	unsigned long flags;
	u16 opcode;
	u8 mbx_err_code;
	int i, j;

	opcode = ((struct qlcnic_bc_hdr *)hdr)->cmd_op;

	if (!FUNC17(QLC_83XX_MBX_READY, &adapter->ahw->idc.status)) {
		FUNC10(&adapter->pdev->dev,
			 "Mailbox cmd attempted, 0x%x\n", opcode);
		FUNC10(&adapter->pdev->dev, "Mailbox detached\n");
		return 0;
	}

	FUNC15(&ahw->mbx_lock, flags);

	mbx_val = FUNC6(ahw, QLCNIC_HOST_MBX_CTRL);
	if (mbx_val) {
		FUNC0(adapter, DRV, "Mailbox cmd attempted, 0x%x\n", opcode);
		FUNC16(&ahw->mbx_lock, flags);
		return QLCNIC_RCODE_TIMEOUT;
	}
	/* Fill in mailbox registers */
	val = size + (sizeof(struct qlcnic_bc_hdr) / sizeof(u32));
	mbx_cmd = 0x31 | (val << 16) | (adapter->ahw->fw_hal_version << 29);

	FUNC18(mbx_cmd, FUNC2(ahw, 0));
	mbx_cmd = 0x1 | (1 << 4);

	if (FUNC13(adapter))
		mbx_cmd |= (pci_func << 5);

	FUNC18(mbx_cmd, FUNC2(ahw, 1));
	for (i = 2, j = 0; j < (sizeof(struct qlcnic_bc_hdr) / sizeof(u32));
			i++, j++) {
		FUNC18(*(hdr++), FUNC2(ahw, i));
	}
	for (j = 0; j < size; j++, i++)
		FUNC18(*(pay++), FUNC2(ahw, i));

	/* Signal FW about the impending command */
	FUNC7(ahw, QLCNIC_HOST_MBX_CTRL, QLCNIC_SET_OWNER);

	/* Waiting for the mailbox cmd to complete and while waiting here
	 * some AEN might arrive. If more than 5 seconds expire we can
	 * assume something is wrong.
	 */
poll:
	rsp = FUNC12(adapter, &wait_time);
	if (rsp != QLCNIC_RCODE_TIMEOUT) {
		/* Get the FW response data */
		fw_data = FUNC14(FUNC1(ahw, 0));
		if (fw_data &  QLCNIC_MBX_ASYNC_EVENT) {
			FUNC8(adapter);
			goto poll;
		}
		mbx_err_code = FUNC5(fw_data);
		rsp_num = FUNC3(fw_data);
		opcode = FUNC4(fw_data);

		switch (mbx_err_code) {
		case QLCNIC_MBX_RSP_OK:
		case QLCNIC_MBX_PORT_RSP_OK:
			rsp = QLCNIC_RCODE_SUCCESS;
			break;
		default:
			if (opcode == QLCNIC_CMD_CONFIG_MAC_VLAN) {
				rsp = FUNC11(adapter);
				if (!rsp)
					goto out;
			}
			FUNC9(&adapter->pdev->dev,
				"MBX command 0x%x failed with err:0x%x\n",
				opcode, mbx_err_code);
			rsp = mbx_err_code;
			break;
		}
		goto out;
	}

	FUNC9(&adapter->pdev->dev, "MBX command 0x%x timed out\n",
		FUNC4(mbx_cmd));
	rsp = QLCNIC_RCODE_TIMEOUT;
out:
	/* clear fw mbx control register */
	FUNC7(ahw, QLCNIC_FW_MBX_CTRL, QLCNIC_CLR_OWNER);
	FUNC16(&adapter->ahw->mbx_lock, flags);
	return rsp;
}