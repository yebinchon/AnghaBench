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
struct lbs_private {int fw_ready; scalar_t__ mesh_dev; scalar_t__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_802_11_RSSI ; 
 int /*<<< orphan*/  LBS_DEB_FW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lbs_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

void FUNC4(struct lbs_private *priv)
{
	FUNC0(LBS_DEB_FW);

	priv->fw_ready = 1;

	/* Firmware doesn't seem to give us RX packets any more
	   until we send it some command. Might as well update */
	FUNC2(priv, CMD_802_11_RSSI, 0,
				     0, 0, NULL);

	FUNC3(priv->dev);
	if (priv->mesh_dev)
		FUNC3(priv->mesh_dev);

	FUNC1(LBS_DEB_FW);
}