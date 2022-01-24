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
struct iwl_test {int /*<<< orphan*/  trans; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 size_t IWL_TM_ATTR_COMMAND ; 
#define  IWL_TM_CMD_APP2DEV_BEGIN_TRACE 138 
#define  IWL_TM_CMD_APP2DEV_DIRECT_REG_READ32 137 
#define  IWL_TM_CMD_APP2DEV_DIRECT_REG_WRITE32 136 
#define  IWL_TM_CMD_APP2DEV_DIRECT_REG_WRITE8 135 
#define  IWL_TM_CMD_APP2DEV_END_TRACE 134 
#define  IWL_TM_CMD_APP2DEV_GET_DEVICE_ID 133 
#define  IWL_TM_CMD_APP2DEV_GET_FW_VERSION 132 
#define  IWL_TM_CMD_APP2DEV_INDIRECT_BUFFER_READ 131 
#define  IWL_TM_CMD_APP2DEV_INDIRECT_BUFFER_WRITE 130 
#define  IWL_TM_CMD_APP2DEV_NOTIFICATIONS 129 
#define  IWL_TM_CMD_APP2DEV_UCODE 128 
 int FUNC1 (struct iwl_test*,struct nlattr**) ; 
 int FUNC2 (struct iwl_test*,struct nlattr**) ; 
 int FUNC3 (struct iwl_test*,struct nlattr**) ; 
 int FUNC4 (struct iwl_test*,struct nlattr**) ; 
 int FUNC5 (struct iwl_test*,struct nlattr**) ; 
 int FUNC6 (struct iwl_test*,struct nlattr**) ; 
 int FUNC7 (struct iwl_test*,struct nlattr**) ; 
 int /*<<< orphan*/  FUNC8 (struct iwl_test*) ; 
 int FUNC9 (struct nlattr*) ; 

int FUNC10(struct iwl_test *tst, struct nlattr **tb)
{
	int result;

	switch (FUNC9(tb[IWL_TM_ATTR_COMMAND])) {
	case IWL_TM_CMD_APP2DEV_UCODE:
		FUNC0(tst->trans, "test cmd to uCode\n");
		result = FUNC1(tst, tb);
		break;

	case IWL_TM_CMD_APP2DEV_DIRECT_REG_READ32:
	case IWL_TM_CMD_APP2DEV_DIRECT_REG_WRITE32:
	case IWL_TM_CMD_APP2DEV_DIRECT_REG_WRITE8:
		FUNC0(tst->trans, "test cmd to register\n");
		result = FUNC6(tst, tb);
		break;

	case IWL_TM_CMD_APP2DEV_BEGIN_TRACE:
		FUNC0(tst->trans, "test uCode trace cmd to driver\n");
		result = FUNC7(tst, tb);
		break;

	case IWL_TM_CMD_APP2DEV_END_TRACE:
		FUNC8(tst);
		result = 0;
		break;

	case IWL_TM_CMD_APP2DEV_INDIRECT_BUFFER_READ:
	case IWL_TM_CMD_APP2DEV_INDIRECT_BUFFER_WRITE:
		FUNC0(tst->trans, "test indirect memory cmd\n");
		result = FUNC4(tst, tb);
		break;

	case IWL_TM_CMD_APP2DEV_NOTIFICATIONS:
		FUNC0(tst->trans, "test notifications cmd\n");
		result = FUNC5(tst, tb);
		break;

	case IWL_TM_CMD_APP2DEV_GET_FW_VERSION:
		FUNC0(tst->trans, "test get FW ver cmd\n");
		result = FUNC3(tst, tb);
		break;

	case IWL_TM_CMD_APP2DEV_GET_DEVICE_ID:
		FUNC0(tst->trans, "test Get device ID cmd\n");
		result = FUNC2(tst, tb);
		break;

	default:
		FUNC0(tst->trans, "Unknown test command\n");
		result = 1;
		break;
	}
	return result;
}