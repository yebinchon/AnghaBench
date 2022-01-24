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
struct net_device {int /*<<< orphan*/  name; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  channel; } ;
struct lbs_private {scalar_t__ mesh_fw_ver; void* mesh_tlv; TYPE_1__ curbssparams; struct net_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_ACT_MESH_CONFIG_START ; 
 int /*<<< orphan*/  LBS_DEB_MAIN ; 
 scalar_t__ MESH_FW_NEW ; 
 scalar_t__ MESH_FW_OLD ; 
 void* TLV_TYPE_MESH_ID ; 
 void* TLV_TYPE_OLD_MESH_ID ; 
 int /*<<< orphan*/  dev_attr_lbs_mesh ; 
 int /*<<< orphan*/  dev_attr_lbs_rtap ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct lbs_private*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct lbs_private*) ; 
 scalar_t__ FUNC6 (struct lbs_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC10 (struct lbs_private*) ; 
 scalar_t__ FUNC11 (struct net_device*) ; 

int FUNC12(struct lbs_private *priv)
{
	struct net_device *dev = priv->dev;
	int ret = -1;

	FUNC2(LBS_DEB_MAIN);

	/* poke the firmware */
	ret = FUNC9(priv);
	if (ret)
		goto done;

	/* init 802.11d */
	FUNC5(priv);

	if (FUNC11(dev)) {
		FUNC7("cannot register ethX device\n");
		goto done;
	}

	FUNC10(priv);

	/* Check mesh FW version and appropriately send the mesh start
	 * command
	 */
	if (priv->mesh_fw_ver == MESH_FW_OLD) {
		/* Enable mesh, if supported, and work out which TLV it uses.
		   0x100 + 291 is an unofficial value used in 5.110.20.pXX
		   0x100 + 37 is the official value used in 5.110.21.pXX
		   but we check them in that order because 20.pXX doesn't
		   give an error -- it just silently fails. */

		/* 5.110.20.pXX firmware will fail the command if the channel
		   doesn't match the existing channel. But only if the TLV
		   is correct. If the channel is wrong, _BOTH_ versions will
		   give an error to 0x100+291, and allow 0x100+37 to succeed.
		   It's just that 5.110.20.pXX will not have done anything
		   useful */

		priv->mesh_tlv = TLV_TYPE_OLD_MESH_ID;
		if (FUNC6(priv, CMD_ACT_MESH_CONFIG_START,
				    priv->curbssparams.channel)) {
			priv->mesh_tlv = TLV_TYPE_MESH_ID;
			if (FUNC6(priv, CMD_ACT_MESH_CONFIG_START,
					    priv->curbssparams.channel))
				priv->mesh_tlv = 0;
		}
	} else if (priv->mesh_fw_ver == MESH_FW_NEW) {
		/* 10.0.0.pXX new firmwares should succeed with TLV
		 * 0x100+37; Do not invoke command with old TLV.
		 */
		priv->mesh_tlv = TLV_TYPE_MESH_ID;
		if (FUNC6(priv, CMD_ACT_MESH_CONFIG_START,
				    priv->curbssparams.channel))
			priv->mesh_tlv = 0;
	}
	if (priv->mesh_tlv) {
		FUNC1(priv);

		if (FUNC0(&dev->dev, &dev_attr_lbs_mesh))
			FUNC7("cannot register lbs_mesh attribute\n");

		/* While rtap isn't related to mesh, only mesh-enabled
		 * firmware implements the rtap functionality via
		 * CMD_802_11_MONITOR_MODE.
		 */
		if (FUNC0(&dev->dev, &dev_attr_lbs_rtap))
			FUNC7("cannot register lbs_rtap attribute\n");
	}

	FUNC4(priv, dev);

	FUNC8("%s: Marvell WLAN 802.11 adapter\n", dev->name);

	ret = 0;

done:
	FUNC3(LBS_DEB_MAIN, "ret %d", ret);
	return ret;
}