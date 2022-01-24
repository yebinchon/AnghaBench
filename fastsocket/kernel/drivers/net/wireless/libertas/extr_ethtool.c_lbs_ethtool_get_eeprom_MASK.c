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
struct net_device {struct lbs_private* ml_priv; } ;
struct lbs_private {int dummy; } ;
struct ethtool_eeprom {scalar_t__ offset; scalar_t__ len; } ;
struct TYPE_2__ {void* size; } ;
struct cmd_ds_802_11_eeprom_access {int /*<<< orphan*/  value; void* len; void* offset; void* action; TYPE_1__ hdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_802_11_EEPROM_ACCESS ; 
 int CMD_ACT_GET ; 
 int EINVAL ; 
 int /*<<< orphan*/  LBS_DEB_ETHTOOL ; 
 scalar_t__ LBS_EEPROM_LEN ; 
 int LBS_EEPROM_READ_LEN ; 
 void* FUNC0 (int) ; 
 int FUNC1 (struct lbs_private*,int /*<<< orphan*/ ,struct cmd_ds_802_11_eeprom_access*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev,
                                  struct ethtool_eeprom *eeprom, u8 * bytes)
{
	struct lbs_private *priv = dev->ml_priv;
	struct cmd_ds_802_11_eeprom_access cmd;
	int ret;

	FUNC2(LBS_DEB_ETHTOOL);

	if (eeprom->offset + eeprom->len > LBS_EEPROM_LEN ||
	    eeprom->len > LBS_EEPROM_READ_LEN) {
		ret = -EINVAL;
		goto out;
	}

	cmd.hdr.size = FUNC0(sizeof(struct cmd_ds_802_11_eeprom_access) -
		LBS_EEPROM_READ_LEN + eeprom->len);
	cmd.action = FUNC0(CMD_ACT_GET);
	cmd.offset = FUNC0(eeprom->offset);
	cmd.len    = FUNC0(eeprom->len);
	ret = FUNC1(priv, CMD_802_11_EEPROM_ACCESS, &cmd);
	if (!ret)
		FUNC4(bytes, cmd.value, eeprom->len);

out:
	FUNC3(LBS_DEB_ETHTOOL, "ret %d", ret);
        return ret;
}