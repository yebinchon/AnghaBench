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
struct wl12xx_conf_rf {int /*<<< orphan*/  tx_per_channel_power_compensation_5; int /*<<< orphan*/  tx_per_channel_power_compensation_2; } ;
struct TYPE_4__ {struct wl12xx_conf_rf rf; } ;
struct wl12xx_priv {TYPE_2__ conf; } ;
struct TYPE_3__ {int /*<<< orphan*/  id; } ;
struct wl1271_ext_radio_parms_cmd {int /*<<< orphan*/  tx_per_channel_power_compensation_5; int /*<<< orphan*/  tx_per_channel_power_compensation_2; TYPE_1__ test; } ;
struct wl1271 {int /*<<< orphan*/  nvs; struct wl12xx_priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONF_TX_PWR_COMPENSATION_LEN_2 ; 
 int /*<<< orphan*/  CONF_TX_PWR_COMPENSATION_LEN_5 ; 
 int /*<<< orphan*/  DEBUG_CMD ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  TEST_CMD_INI_FILE_RF_EXTENDED_PARAM ; 
 int /*<<< orphan*/  FUNC0 (struct wl1271_ext_radio_parms_cmd*) ; 
 struct wl1271_ext_radio_parms_cmd* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct wl1271*,struct wl1271_ext_radio_parms_cmd*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,struct wl1271_ext_radio_parms_cmd*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

int FUNC6(struct wl1271 *wl)
{
	struct wl1271_ext_radio_parms_cmd *ext_radio_parms;
	struct wl12xx_priv *priv = wl->priv;
	struct wl12xx_conf_rf *rf = &priv->conf.rf;
	int ret;

	if (!wl->nvs)
		return -ENODEV;

	ext_radio_parms = FUNC1(sizeof(*ext_radio_parms), GFP_KERNEL);
	if (!ext_radio_parms)
		return -ENOMEM;

	ext_radio_parms->test.id = TEST_CMD_INI_FILE_RF_EXTENDED_PARAM;

	FUNC2(ext_radio_parms->tx_per_channel_power_compensation_2,
	       rf->tx_per_channel_power_compensation_2,
	       CONF_TX_PWR_COMPENSATION_LEN_2);
	FUNC2(ext_radio_parms->tx_per_channel_power_compensation_5,
	       rf->tx_per_channel_power_compensation_5,
	       CONF_TX_PWR_COMPENSATION_LEN_5);

	FUNC4(DEBUG_CMD, "TEST_CMD_INI_FILE_EXT_RADIO_PARAM: ",
		    ext_radio_parms, sizeof(*ext_radio_parms));

	ret = FUNC3(wl, ext_radio_parms, sizeof(*ext_radio_parms), 0);
	if (ret < 0)
		FUNC5("TEST_CMD_INI_FILE_RF_EXTENDED_PARAM failed");

	FUNC0(ext_radio_parms);
	return ret;
}