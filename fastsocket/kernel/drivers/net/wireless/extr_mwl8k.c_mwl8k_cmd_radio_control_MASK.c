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
struct mwl8k_priv {int radio_on; scalar_t__ radio_short_preamble; } ;
struct TYPE_2__ {void* length; void* code; } ;
struct mwl8k_cmd_radio_control {TYPE_1__ header; void* radio_on; void* control; void* action; } ;
struct ieee80211_hw {struct mwl8k_priv* priv; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MWL8K_CMD_RADIO_CONTROL ; 
 int MWL8K_CMD_SET ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mwl8k_cmd_radio_control*) ; 
 struct mwl8k_cmd_radio_control* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ieee80211_hw*,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC4(struct ieee80211_hw *hw, bool enable, bool force)
{
	struct mwl8k_priv *priv = hw->priv;
	struct mwl8k_cmd_radio_control *cmd;
	int rc;

	if (enable == priv->radio_on && !force)
		return 0;

	cmd = FUNC2(sizeof(*cmd), GFP_KERNEL);
	if (cmd == NULL)
		return -ENOMEM;

	cmd->header.code = FUNC0(MWL8K_CMD_RADIO_CONTROL);
	cmd->header.length = FUNC0(sizeof(*cmd));
	cmd->action = FUNC0(MWL8K_CMD_SET);
	cmd->control = FUNC0(priv->radio_short_preamble ? 3 : 1);
	cmd->radio_on = FUNC0(enable ? 0x0001 : 0x0000);

	rc = FUNC3(hw, &cmd->header);
	FUNC1(cmd);

	if (!rc)
		priv->radio_on = enable;

	return rc;
}