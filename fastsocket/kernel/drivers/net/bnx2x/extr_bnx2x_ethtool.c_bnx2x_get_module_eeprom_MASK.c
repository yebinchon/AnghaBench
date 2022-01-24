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
struct net_device {int dummy; } ;
struct ethtool_eeprom {unsigned int offset; unsigned int len; } ;
struct TYPE_2__ {int /*<<< orphan*/ * phy; } ;
struct bnx2x {TYPE_1__ link_params; } ;

/* Variables and functions */
 int BNX2X_MSG_ETHTOOL ; 
 int BNX2X_MSG_NVM ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int EAGAIN ; 
 int EINVAL ; 
 unsigned int ETH_MODULE_SFF_8079_LEN ; 
 unsigned int ETH_MODULE_SFF_8472_LEN ; 
 int /*<<< orphan*/  I2C_DEV_ADDR_A0 ; 
 int /*<<< orphan*/  I2C_DEV_ADDR_A2 ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*) ; 
 int FUNC2 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,unsigned int,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x*) ; 
 struct bnx2x* FUNC6 (struct net_device*) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev,
				   struct ethtool_eeprom *ee,
				   u8 *data)
{
	struct bnx2x *bp = FUNC6(dev);
	int rc = -EINVAL, phy_idx;
	u8 *user_data = data;
	unsigned int start_addr = ee->offset, xfer_size = 0;

	if (!FUNC3(bp)) {
		FUNC0(BNX2X_MSG_ETHTOOL | BNX2X_MSG_NVM,
		   "cannot access eeprom when the interface is down\n");
		return -EAGAIN;
	}

	phy_idx = FUNC2(bp);

	/* Read A0 section */
	if (start_addr < ETH_MODULE_SFF_8079_LEN) {
		/* Limit transfer size to the A0 section boundary */
		if (start_addr + ee->len > ETH_MODULE_SFF_8079_LEN)
			xfer_size = ETH_MODULE_SFF_8079_LEN - start_addr;
		else
			xfer_size = ee->len;
		FUNC1(bp);
		rc = FUNC4(&bp->link_params.phy[phy_idx],
						  &bp->link_params,
						  I2C_DEV_ADDR_A0,
						  start_addr,
						  xfer_size,
						  user_data);
		FUNC5(bp);
		if (rc) {
			FUNC0(BNX2X_MSG_ETHTOOL, "Failed reading A0 section\n");

			return -EINVAL;
		}
		user_data += xfer_size;
		start_addr += xfer_size;
	}

	/* Read A2 section */
	if ((start_addr >= ETH_MODULE_SFF_8079_LEN) &&
	    (start_addr < ETH_MODULE_SFF_8472_LEN)) {
		xfer_size = ee->len - xfer_size;
		/* Limit transfer size to the A2 section boundary */
		if (start_addr + xfer_size > ETH_MODULE_SFF_8472_LEN)
			xfer_size = ETH_MODULE_SFF_8472_LEN - start_addr;
		start_addr -= ETH_MODULE_SFF_8079_LEN;
		FUNC1(bp);
		rc = FUNC4(&bp->link_params.phy[phy_idx],
						  &bp->link_params,
						  I2C_DEV_ADDR_A2,
						  start_addr,
						  xfer_size,
						  user_data);
		FUNC5(bp);
		if (rc) {
			FUNC0(BNX2X_MSG_ETHTOOL, "Failed reading A2 section\n");
			return -EINVAL;
		}
	}
	return rc;
}