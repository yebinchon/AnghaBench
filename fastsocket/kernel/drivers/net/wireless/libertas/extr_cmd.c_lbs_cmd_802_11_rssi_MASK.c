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
struct lbs_private {scalar_t__** RSSI; scalar_t__** NF; scalar_t__** SNR; } ;
struct TYPE_3__ {void* N; } ;
struct TYPE_4__ {TYPE_1__ rssi; } ;
struct cmd_ds_command {TYPE_2__ params; void* size; void* command; } ;
struct cmd_ds_802_11_rssi {int dummy; } ;

/* Variables and functions */
 scalar_t__ CMD_802_11_RSSI ; 
 scalar_t__ DEFAULT_BCN_AVG_FACTOR ; 
 int /*<<< orphan*/  LBS_DEB_CMD ; 
 scalar_t__ S_DS_GEN ; 
 size_t TYPE_AVG ; 
 size_t TYPE_BEACON ; 
 size_t TYPE_NOAVG ; 
 void* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct lbs_private *priv,
				struct cmd_ds_command *cmd)
{

	FUNC1(LBS_DEB_CMD);
	cmd->command = FUNC0(CMD_802_11_RSSI);
	cmd->size = FUNC0(sizeof(struct cmd_ds_802_11_rssi) + S_DS_GEN);
	cmd->params.rssi.N = FUNC0(DEFAULT_BCN_AVG_FACTOR);

	/* reset Beacon SNR/NF/RSSI values */
	priv->SNR[TYPE_BEACON][TYPE_NOAVG] = 0;
	priv->SNR[TYPE_BEACON][TYPE_AVG] = 0;
	priv->NF[TYPE_BEACON][TYPE_NOAVG] = 0;
	priv->NF[TYPE_BEACON][TYPE_AVG] = 0;
	priv->RSSI[TYPE_BEACON][TYPE_NOAVG] = 0;
	priv->RSSI[TYPE_BEACON][TYPE_AVG] = 0;

	FUNC2(LBS_DEB_CMD);
	return 0;
}