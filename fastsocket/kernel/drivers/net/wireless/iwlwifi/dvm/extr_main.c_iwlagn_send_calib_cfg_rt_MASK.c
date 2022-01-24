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
struct iwl_priv {int dummy; } ;
struct iwl_host_cmd {int /*<<< orphan*/  data; int /*<<< orphan*/  len; int /*<<< orphan*/  id; } ;
struct TYPE_3__ {int /*<<< orphan*/  start; int /*<<< orphan*/  is_enable; } ;
struct TYPE_4__ {TYPE_1__ once; } ;
struct iwl_calib_cfg_cmd {TYPE_2__ ucd_calib_cfg; } ;
typedef  int /*<<< orphan*/  calib_cfg_cmd ;

/* Variables and functions */
 int /*<<< orphan*/  CALIBRATION_CFG_CMD ; 
 int /*<<< orphan*/  IWL_CALIB_RT_CFG_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct iwl_priv*,struct iwl_host_cmd*) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_calib_cfg_cmd*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct iwl_priv *priv, u32 cfg)
{
	struct iwl_calib_cfg_cmd calib_cfg_cmd;
	struct iwl_host_cmd cmd = {
		.id = CALIBRATION_CFG_CMD,
		.len = sizeof(struct iwl_calib_cfg_cmd), 
		.data = &calib_cfg_cmd, 
	};

	FUNC2(&calib_cfg_cmd, 0, sizeof(calib_cfg_cmd));
	calib_cfg_cmd.ucd_calib_cfg.once.is_enable = IWL_CALIB_RT_CFG_ALL;
	calib_cfg_cmd.ucd_calib_cfg.once.start = FUNC0(cfg);

	return FUNC1(priv, &cmd);
}