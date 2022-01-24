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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct bnx2x {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  NETIF_MSG_LINK ; 
#define  PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM8073 135 
#define  PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84833 134 
#define  PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84834 133 
#define  PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM8722 132 
#define  PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM8726 131 
#define  PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM8727 130 
#define  PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM8727_NOC 129 
#define  PORT_HW_CFG_XGXS_EXT_PHY_TYPE_FAILURE 128 
 int FUNC1 (struct bnx2x*,int*,int*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct bnx2x*,int*,int*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct bnx2x*,int*,int*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct bnx2x*,int*,int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct bnx2x *bp, u32 shmem_base_path[],
				     u32 shmem2_base_path[], u8 phy_index,
				     u32 ext_phy_type, u32 chip_id)
{
	int rc = 0;

	switch (ext_phy_type) {
	case PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM8073:
		rc = FUNC1(bp, shmem_base_path,
						shmem2_base_path,
						phy_index, chip_id);
		break;
	case PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM8722:
	case PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM8727:
	case PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM8727_NOC:
		rc = FUNC4(bp, shmem_base_path,
						shmem2_base_path,
						phy_index, chip_id);
		break;

	case PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM8726:
		/* GPIO1 affects both ports, so there's need to pull
		 * it for single port alone
		 */
		rc = FUNC3(bp, shmem_base_path,
						shmem2_base_path,
						phy_index, chip_id);
		break;
	case PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84833:
	case PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84834:
		/* GPIO3's are linked, and so both need to be toggled
		 * to obtain required 2us pulse.
		 */
		rc = FUNC2(bp, shmem_base_path,
						shmem2_base_path,
						phy_index, chip_id);
		break;
	case PORT_HW_CFG_XGXS_EXT_PHY_TYPE_FAILURE:
		rc = -EINVAL;
		break;
	default:
		FUNC0(NETIF_MSG_LINK,
			   "ext_phy 0x%x common init not required\n",
			   ext_phy_type);
		break;
	}

	if (rc)
		FUNC5(bp->dev,  "Warning: PHY was not initialized,"
				      " Port %d\n",
			 0);
	return rc;
}