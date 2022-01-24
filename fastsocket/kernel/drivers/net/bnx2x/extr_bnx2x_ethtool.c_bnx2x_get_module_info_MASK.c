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
typedef  int u8 ;
struct net_device {int dummy; } ;
struct ethtool_modinfo {int /*<<< orphan*/  eeprom_len; int /*<<< orphan*/  type; } ;
struct TYPE_2__ {int /*<<< orphan*/ * phy; } ;
struct bnx2x {TYPE_1__ link_params; } ;

/* Variables and functions */
 int BNX2X_MSG_ETHTOOL ; 
 int BNX2X_MSG_NVM ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int EAGAIN ; 
 int EINVAL ; 
 int /*<<< orphan*/  ETH_MODULE_SFF_8079 ; 
 int /*<<< orphan*/  ETH_MODULE_SFF_8079_LEN ; 
 int /*<<< orphan*/  ETH_MODULE_SFF_8472 ; 
 int /*<<< orphan*/  ETH_MODULE_SFF_8472_LEN ; 
 int /*<<< orphan*/  I2C_DEV_ADDR_A0 ; 
 int SFP_EEPROM_DIAG_ADDR_CHANGE_REQ ; 
 int /*<<< orphan*/  SFP_EEPROM_DIAG_TYPE_ADDR ; 
 int /*<<< orphan*/  SFP_EEPROM_DIAG_TYPE_SIZE ; 
 int /*<<< orphan*/  SFP_EEPROM_SFF_8472_COMP_ADDR ; 
 int /*<<< orphan*/  SFP_EEPROM_SFF_8472_COMP_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*) ; 
 int FUNC2 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x*) ; 
 struct bnx2x* FUNC6 (struct net_device*) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev,
				 struct ethtool_modinfo *modinfo)
{
	struct bnx2x *bp = FUNC6(dev);
	int phy_idx, rc;
	u8 sff8472_comp, diag_type;

	if (!FUNC3(bp)) {
		FUNC0(BNX2X_MSG_ETHTOOL | BNX2X_MSG_NVM,
		   "cannot access eeprom when the interface is down\n");
		return -EAGAIN;
	}
	phy_idx = FUNC2(bp);
	FUNC1(bp);
	rc = FUNC4(&bp->link_params.phy[phy_idx],
					  &bp->link_params,
					  I2C_DEV_ADDR_A0,
					  SFP_EEPROM_SFF_8472_COMP_ADDR,
					  SFP_EEPROM_SFF_8472_COMP_SIZE,
					  &sff8472_comp);
	FUNC5(bp);
	if (rc) {
		FUNC0(BNX2X_MSG_ETHTOOL, "Failed reading SFF-8472 comp field\n");
		return -EINVAL;
	}

	FUNC1(bp);
	rc = FUNC4(&bp->link_params.phy[phy_idx],
					  &bp->link_params,
					  I2C_DEV_ADDR_A0,
					  SFP_EEPROM_DIAG_TYPE_ADDR,
					  SFP_EEPROM_DIAG_TYPE_SIZE,
					  &diag_type);
	FUNC5(bp);
	if (rc) {
		FUNC0(BNX2X_MSG_ETHTOOL, "Failed reading Diag Type field\n");
		return -EINVAL;
	}

	if (!sff8472_comp ||
	    (diag_type & SFP_EEPROM_DIAG_ADDR_CHANGE_REQ)) {
		modinfo->type = ETH_MODULE_SFF_8079;
		modinfo->eeprom_len = ETH_MODULE_SFF_8079_LEN;
	} else {
		modinfo->type = ETH_MODULE_SFF_8472;
		modinfo->eeprom_len = ETH_MODULE_SFF_8472_LEN;
	}
	return 0;
}