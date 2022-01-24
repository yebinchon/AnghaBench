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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct qlcnic_hardware_context {int module_type; int /*<<< orphan*/  supported_type; int /*<<< orphan*/  link_speed; scalar_t__ pci_base0; int /*<<< orphan*/  pci_func; } ;
struct TYPE_4__ {int* arg; } ;
struct qlcnic_cmd_args {TYPE_2__ rsp; } ;
struct qlcnic_adapter {TYPE_1__* pdev; int /*<<< orphan*/  portnum; struct qlcnic_hardware_context* ahw; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
#define  LINKEVENT_MODULE_OPTICAL_LRM 138 
#define  LINKEVENT_MODULE_OPTICAL_SFP_1G 137 
#define  LINKEVENT_MODULE_OPTICAL_SRLR 136 
#define  LINKEVENT_MODULE_OPTICAL_UNKNOWN 135 
#define  LINKEVENT_MODULE_TWINAX 134 
#define  LINKEVENT_MODULE_TWINAX_UNSUPPORTED_CABLE 133 
#define  LINKEVENT_MODULE_TWINAX_UNSUPPORTED_CABLELEN 132 
 int /*<<< orphan*/  PORT_FIBRE ; 
 int /*<<< orphan*/  PORT_OTHER ; 
 int /*<<< orphan*/  PORT_TP ; 
 int /*<<< orphan*/  QLCNIC_CMD_GET_LINK_STATUS ; 
#define  QLC_83XX_100M_LINK 131 
#define  QLC_83XX_10G_LINK 130 
#define  QLC_83XX_10M_LINK 129 
#define  QLC_83XX_1G_LINK 128 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPEED_10 ; 
 int /*<<< orphan*/  SPEED_100 ; 
 int /*<<< orphan*/  SPEED_1000 ; 
 int /*<<< orphan*/  SPEED_10000 ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct qlcnic_cmd_args*,struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct qlcnic_cmd_args*) ; 
 int FUNC7 (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ; 
 scalar_t__ FUNC8 (struct qlcnic_adapter*) ; 
 int FUNC9 (scalar_t__) ; 

int FUNC10(struct qlcnic_adapter *adapter)
{
	u8 pci_func;
	int err;
	u32 config = 0, state;
	struct qlcnic_cmd_args cmd;
	struct qlcnic_hardware_context *ahw = adapter->ahw;

	if (FUNC8(adapter))
		pci_func = adapter->portnum;
	else
		pci_func = ahw->pci_func;

	state = FUNC9(ahw->pci_base0 + FUNC1(pci_func));
	if (!FUNC3(state, pci_func)) {
		FUNC4(&adapter->pdev->dev, "link state down\n");
		return config;
	}
	FUNC5(&cmd, adapter, QLCNIC_CMD_GET_LINK_STATUS);
	err = FUNC7(adapter, &cmd);
	if (err) {
		FUNC4(&adapter->pdev->dev,
			 "Get Link Status Command failed: 0x%x\n", err);
		goto out;
	} else {
		config = cmd.rsp.arg[1];
		switch (FUNC0(config)) {
		case QLC_83XX_10M_LINK:
			ahw->link_speed = SPEED_10;
			break;
		case QLC_83XX_100M_LINK:
			ahw->link_speed = SPEED_100;
			break;
		case QLC_83XX_1G_LINK:
			ahw->link_speed = SPEED_1000;
			break;
		case QLC_83XX_10G_LINK:
			ahw->link_speed = SPEED_10000;
			break;
		default:
			ahw->link_speed = 0;
			break;
		}
		config = cmd.rsp.arg[3];
		if (FUNC2(config)) {
			switch (ahw->module_type) {
			case LINKEVENT_MODULE_OPTICAL_UNKNOWN:
			case LINKEVENT_MODULE_OPTICAL_SRLR:
			case LINKEVENT_MODULE_OPTICAL_LRM:
			case LINKEVENT_MODULE_OPTICAL_SFP_1G:
				ahw->supported_type = PORT_FIBRE;
				break;
			case LINKEVENT_MODULE_TWINAX_UNSUPPORTED_CABLE:
			case LINKEVENT_MODULE_TWINAX_UNSUPPORTED_CABLELEN:
			case LINKEVENT_MODULE_TWINAX:
				ahw->supported_type = PORT_TP;
				break;
			default:
				ahw->supported_type = PORT_OTHER;
			}
		}
		if (config & 1)
			err = 1;
	}
out:
	FUNC6(&cmd);
	return config;
}