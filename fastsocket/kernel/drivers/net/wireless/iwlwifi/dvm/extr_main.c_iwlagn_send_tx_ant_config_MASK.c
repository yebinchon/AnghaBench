#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct iwl_tx_ant_config_cmd {int /*<<< orphan*/  valid; } ;
struct iwl_priv {TYPE_1__* fw; } ;
struct TYPE_2__ {int /*<<< orphan*/  ucode_ver; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SYNC ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_priv*,char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TX_ANT_CONFIGURATION_CMD ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct iwl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct iwl_tx_ant_config_cmd*) ; 

__attribute__((used)) static int FUNC4(struct iwl_priv *priv, u8 valid_tx_ant)
{
	struct iwl_tx_ant_config_cmd tx_ant_cmd = {
	  .valid = FUNC2(valid_tx_ant),
	};

	if (FUNC1(priv->fw->ucode_ver) > 1) {
		FUNC0(priv, "select valid tx ant: %u\n", valid_tx_ant);
		return FUNC3(priv,
					TX_ANT_CONFIGURATION_CMD,
					CMD_SYNC,
					sizeof(struct iwl_tx_ant_config_cmd),
					&tx_ant_cmd);
	} else {
		FUNC0(priv, "TX_ANT_CONFIGURATION_CMD not supported\n");
		return -EOPNOTSUPP;
	}
}