#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct iwl_set_calib_default_cmd {int /*<<< orphan*/  data; void* length; void* calib_index; } ;
struct iwl_mvm {int dummy; } ;
typedef  int /*<<< orphan*/  cmd_raw ;
typedef  int /*<<< orphan*/  cmd ;
struct TYPE_3__ {int size; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  SET_CALIB_DEFAULT_CMD ; 
 scalar_t__ FUNC1 (int,char*,int) ; 
 void* FUNC2 (int) ; 
 int FUNC3 (struct iwl_mvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct iwl_set_calib_default_cmd*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* wkp_calib_default_data ; 

__attribute__((used)) static int FUNC6(struct iwl_mvm *mvm)
{
	u8 cmd_raw[16]; /* holds the variable size commands */
	struct iwl_set_calib_default_cmd *cmd =
		(struct iwl_set_calib_default_cmd *)cmd_raw;
	int ret, i;

	/* Setting default values for calibrations we don't run */
	for (i = 0; i < FUNC0(wkp_calib_default_data); i++) {
		u16 cmd_len;

		if (wkp_calib_default_data[i].size == 0)
			continue;

		FUNC5(cmd_raw, 0, sizeof(cmd_raw));
		cmd_len = wkp_calib_default_data[i].size + sizeof(cmd);
		cmd->calib_index = FUNC2(i);
		cmd->length = FUNC2(wkp_calib_default_data[i].size);
		if (FUNC1(cmd_len > sizeof(cmd_raw),
			      "Need to enlarge cmd_raw to %d\n", cmd_len))
			break;
		FUNC4(cmd->data, wkp_calib_default_data[i].data,
		       wkp_calib_default_data[i].size);
		ret = FUNC3(mvm, SET_CALIB_DEFAULT_CMD, 0,
					   sizeof(*cmd) +
					   wkp_calib_default_data[i].size,
					   cmd);
		if (ret)
			return ret;
	}

	return 0;
}