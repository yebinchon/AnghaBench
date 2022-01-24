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
typedef  int /*<<< orphan*/  u32 ;
struct qlcnic_fw_dump {int enable; TYPE_2__* tmpl_hdr; int /*<<< orphan*/  clr; } ;
struct qlcnic_adapter {int /*<<< orphan*/  flags; TYPE_1__* ahw; } ;
struct net_device {int dummy; } ;
struct ethtool_dump {int flag; } ;
struct TYPE_4__ {int drv_cap_mask; } ;
struct TYPE_3__ {struct qlcnic_fw_dump fw_dump; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int EINVAL ; 
 int ENOTSUPP ; 
 int /*<<< orphan*/  QLCNIC_CRB_DEV_STATE ; 
 int /*<<< orphan*/  QLCNIC_DEV_BADBAD ; 
 int /*<<< orphan*/  QLCNIC_DEV_FAILED ; 
#define  QLCNIC_DISABLE_FW_DUMP 133 
#define  QLCNIC_ENABLE_FW_DUMP 132 
#define  QLCNIC_FORCE_FW_DUMP_KEY 131 
#define  QLCNIC_FORCE_FW_RESET 130 
 int /*<<< orphan*/  QLCNIC_FW_RESET_OWNER ; 
#define  QLCNIC_RESET_QUIESCENT 129 
#define  QLCNIC_SET_QUIESCENT 128 
 int /*<<< orphan*/  FUNC1 (struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*,...) ; 
 struct qlcnic_adapter* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct qlcnic_adapter*,int) ; 
 int* qlcnic_fw_dump_level ; 

__attribute__((used)) static int
FUNC6(struct net_device *netdev, struct ethtool_dump *val)
{
	int i;
	struct qlcnic_adapter *adapter = FUNC4(netdev);
	struct qlcnic_fw_dump *fw_dump = &adapter->ahw->fw_dump;
	u32 state;

	switch (val->flag) {
	case QLCNIC_FORCE_FW_DUMP_KEY:
		if (!fw_dump->tmpl_hdr) {
			FUNC2(netdev, "FW dump not supported\n");
			return -ENOTSUPP;
		}
		if (!fw_dump->enable) {
			FUNC3(netdev, "FW dump not enabled\n");
			return 0;
		}
		if (fw_dump->clr) {
			FUNC3(netdev,
			"Previous dump not cleared, not forcing dump\n");
			return 0;
		}
		FUNC3(netdev, "Forcing a FW dump\n");
		FUNC5(adapter, val->flag);
		break;
	case QLCNIC_DISABLE_FW_DUMP:
		if (fw_dump->enable && fw_dump->tmpl_hdr) {
			FUNC3(netdev, "Disabling FW dump\n");
			fw_dump->enable = 0;
		}
		return 0;
	case QLCNIC_ENABLE_FW_DUMP:
		if (!fw_dump->tmpl_hdr) {
			FUNC2(netdev, "FW dump not supported\n");
			return -ENOTSUPP;
		}
		if (!fw_dump->enable) {
			FUNC3(netdev, "Enabling FW dump\n");
			fw_dump->enable = 1;
		}
		return 0;
	case QLCNIC_FORCE_FW_RESET:
		FUNC3(netdev, "Forcing a FW reset\n");
		FUNC5(adapter, val->flag);
		adapter->flags &= ~QLCNIC_FW_RESET_OWNER;
		return 0;
	case QLCNIC_SET_QUIESCENT:
	case QLCNIC_RESET_QUIESCENT:
		state = FUNC1(adapter, QLCNIC_CRB_DEV_STATE);
		if (state == QLCNIC_DEV_FAILED || (state == QLCNIC_DEV_BADBAD))
			FUNC3(netdev, "Device in FAILED state\n");
		return 0;
	default:
		if (!fw_dump->tmpl_hdr) {
			FUNC2(netdev, "FW dump not supported\n");
			return -ENOTSUPP;
		}
		for (i = 0; i < FUNC0(qlcnic_fw_dump_level); i++) {
			if (val->flag == qlcnic_fw_dump_level[i]) {
				fw_dump->tmpl_hdr->drv_cap_mask =
							val->flag;
				FUNC3(netdev, "Driver mask changed to: 0x%x\n",
					fw_dump->tmpl_hdr->drv_cap_mask);
				return 0;
			}
		}
		FUNC3(netdev, "Invalid dump level: 0x%x\n", val->flag);
		return -EINVAL;
	}
	return 0;
}