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
struct iwl_priv {TYPE_1__* nvm_data; } ;
struct iwl_calib_temperature_offset_cmd {scalar_t__ radio_sensor_offset; int /*<<< orphan*/  hdr; } ;
typedef  int /*<<< orphan*/  cmd ;
struct TYPE_2__ {scalar_t__ raw_temperature; } ;

/* Variables and functions */
 scalar_t__ DEFAULT_RADIO_SENSOR_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_priv*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IWL_PHY_CALIBRATE_TEMP_OFFSET_CMD ; 
 int FUNC1 (struct iwl_priv*,void*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_calib_temperature_offset_cmd*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct iwl_priv *priv)
{
	struct iwl_calib_temperature_offset_cmd cmd;

	FUNC4(&cmd, 0, sizeof(cmd));
	FUNC2(&cmd.hdr, IWL_PHY_CALIBRATE_TEMP_OFFSET_CMD);
	cmd.radio_sensor_offset = priv->nvm_data->raw_temperature;
	if (!(cmd.radio_sensor_offset))
		cmd.radio_sensor_offset = DEFAULT_RADIO_SENSOR_OFFSET;

	FUNC0(priv, "Radio sensor offset: %d\n",
			FUNC3(cmd.radio_sensor_offset));
	return FUNC1(priv, (void *)&cmd, sizeof(cmd));
}