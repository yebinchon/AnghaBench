#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct nlattr {int dummy; } ;
struct iwl_priv {int /*<<< orphan*/  mutex; int /*<<< orphan*/  tst; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int ENOSYS ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_priv*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_priv*,char*,...) ; 
 struct iwl_priv* FUNC2 (struct ieee80211_hw*) ; 
 size_t IWL_TM_ATTR_COMMAND ; 
 int IWL_TM_ATTR_MAX ; 
#define  IWL_TM_CMD_APP2DEV_BEGIN_TRACE 147 
#define  IWL_TM_CMD_APP2DEV_CFG_INIT_CALIB 146 
#define  IWL_TM_CMD_APP2DEV_DIRECT_REG_READ32 145 
#define  IWL_TM_CMD_APP2DEV_DIRECT_REG_WRITE32 144 
#define  IWL_TM_CMD_APP2DEV_DIRECT_REG_WRITE8 143 
#define  IWL_TM_CMD_APP2DEV_END_TRACE 142 
#define  IWL_TM_CMD_APP2DEV_FIXRATE_REQ 141 
#define  IWL_TM_CMD_APP2DEV_GET_DEVICENAME 140 
#define  IWL_TM_CMD_APP2DEV_GET_DEVICE_ID 139 
#define  IWL_TM_CMD_APP2DEV_GET_EEPROM 138 
#define  IWL_TM_CMD_APP2DEV_GET_FW_INFO 137 
#define  IWL_TM_CMD_APP2DEV_GET_FW_VERSION 136 
#define  IWL_TM_CMD_APP2DEV_INDIRECT_BUFFER_READ 135 
#define  IWL_TM_CMD_APP2DEV_INDIRECT_BUFFER_WRITE 134 
#define  IWL_TM_CMD_APP2DEV_LOAD_INIT_FW 133 
#define  IWL_TM_CMD_APP2DEV_LOAD_RUNTIME_FW 132 
#define  IWL_TM_CMD_APP2DEV_LOAD_WOWLAN_FW 131 
#define  IWL_TM_CMD_APP2DEV_NOTIFICATIONS 130 
#define  IWL_TM_CMD_APP2DEV_OWNERSHIP 129 
#define  IWL_TM_CMD_APP2DEV_UCODE 128 
 int FUNC3 (int /*<<< orphan*/ *,struct nlattr**) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct nlattr**,void*,int) ; 
 int FUNC5 (struct ieee80211_hw*,struct nlattr**) ; 
 int FUNC6 (struct ieee80211_hw*,struct nlattr**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct nlattr*) ; 

int FUNC10(struct ieee80211_hw *hw, void *data, int len)
{
	struct nlattr *tb[IWL_TM_ATTR_MAX];
	struct iwl_priv *priv = FUNC2(hw);
	int result;

	result = FUNC4(&priv->tst, tb, data, len);
	if (result)
		return result;

	/* in case multiple accesses to the device happens */
	FUNC7(&priv->mutex);
	switch (FUNC9(tb[IWL_TM_ATTR_COMMAND])) {
	case IWL_TM_CMD_APP2DEV_UCODE:
	case IWL_TM_CMD_APP2DEV_DIRECT_REG_READ32:
	case IWL_TM_CMD_APP2DEV_DIRECT_REG_WRITE32:
	case IWL_TM_CMD_APP2DEV_DIRECT_REG_WRITE8:
	case IWL_TM_CMD_APP2DEV_BEGIN_TRACE:
	case IWL_TM_CMD_APP2DEV_END_TRACE:
	case IWL_TM_CMD_APP2DEV_INDIRECT_BUFFER_READ:
	case IWL_TM_CMD_APP2DEV_NOTIFICATIONS:
	case IWL_TM_CMD_APP2DEV_GET_FW_VERSION:
	case IWL_TM_CMD_APP2DEV_GET_DEVICE_ID:
	case IWL_TM_CMD_APP2DEV_INDIRECT_BUFFER_WRITE:
		result = FUNC3(&priv->tst, tb);
		break;

	case IWL_TM_CMD_APP2DEV_GET_DEVICENAME:
	case IWL_TM_CMD_APP2DEV_LOAD_INIT_FW:
	case IWL_TM_CMD_APP2DEV_CFG_INIT_CALIB:
	case IWL_TM_CMD_APP2DEV_LOAD_RUNTIME_FW:
	case IWL_TM_CMD_APP2DEV_GET_EEPROM:
	case IWL_TM_CMD_APP2DEV_FIXRATE_REQ:
	case IWL_TM_CMD_APP2DEV_LOAD_WOWLAN_FW:
	case IWL_TM_CMD_APP2DEV_GET_FW_INFO:
		FUNC0(priv, "testmode cmd to driver\n");
		result = FUNC5(hw, tb);
		break;

	case IWL_TM_CMD_APP2DEV_OWNERSHIP:
		FUNC0(priv, "testmode change uCode ownership\n");
		result = FUNC6(hw, tb);
		break;

	default:
		FUNC1(priv, "Unknown testmode command\n");
		result = -ENOSYS;
		break;
	}
	FUNC8(&priv->mutex);

	if (result)
		FUNC1(priv, "Test cmd failed result=%d\n", result);
	return result;
}