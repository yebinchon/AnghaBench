#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct net_device {int dummy; } ;
struct ethtool_regs {int version; } ;
struct TYPE_5__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_2__ phy; } ;
struct TYPE_6__ {scalar_t__ receive_errors; } ;
struct e1000_adapter {TYPE_3__ phy_stats; struct e1000_hw hw; TYPE_1__* pdev; } ;
struct TYPE_4__ {int revision; int device; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL ; 
 int E1000_REGS_LEN ; 
 int /*<<< orphan*/  M88E1000_PHY_SPEC_CTRL ; 
 int /*<<< orphan*/  M88E1000_PHY_SPEC_STATUS ; 
 int /*<<< orphan*/  MII_STAT1000 ; 
 int /*<<< orphan*/  RCTL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RDTR ; 
 int /*<<< orphan*/  STATUS ; 
 int /*<<< orphan*/  TCTL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TIDV ; 
 scalar_t__ e1000_phy_m88 ; 
 int /*<<< orphan*/  FUNC6 (struct e1000_hw*,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (void*,int /*<<< orphan*/ ,int) ; 
 struct e1000_adapter* FUNC9 (struct net_device*) ; 

__attribute__((used)) static void FUNC10(struct net_device *netdev,
			   struct ethtool_regs *regs, void *p)
{
	struct e1000_adapter *adapter = FUNC9(netdev);
	struct e1000_hw *hw = &adapter->hw;
	u32 *regs_buff = p;
	u16 phy_data;

	FUNC8(p, 0, E1000_REGS_LEN * sizeof(u32));

	regs->version = (1 << 24) | (adapter->pdev->revision << 16) |
	    adapter->pdev->device;

	regs_buff[0] = FUNC7(CTRL);
	regs_buff[1] = FUNC7(STATUS);

	regs_buff[2] = FUNC7(RCTL);
	regs_buff[3] = FUNC7(FUNC1(0));
	regs_buff[4] = FUNC7(FUNC0(0));
	regs_buff[5] = FUNC7(FUNC2(0));
	regs_buff[6] = FUNC7(RDTR);

	regs_buff[7] = FUNC7(TCTL);
	regs_buff[8] = FUNC7(FUNC4(0));
	regs_buff[9] = FUNC7(FUNC3(0));
	regs_buff[10] = FUNC7(FUNC5(0));
	regs_buff[11] = FUNC7(TIDV);

	regs_buff[12] = adapter->hw.phy.type;	/* PHY type (IGP=1, M88=0) */

	/* ethtool doesn't use anything past this point, so all this
	 * code is likely legacy junk for apps that may or may not exist
	 */
	if (hw->phy.type == e1000_phy_m88) {
		FUNC6(hw, M88E1000_PHY_SPEC_STATUS, &phy_data);
		regs_buff[13] = (u32)phy_data; /* cable length */
		regs_buff[14] = 0;  /* Dummy (to align w/ IGP phy reg dump) */
		regs_buff[15] = 0;  /* Dummy (to align w/ IGP phy reg dump) */
		regs_buff[16] = 0;  /* Dummy (to align w/ IGP phy reg dump) */
		FUNC6(hw, M88E1000_PHY_SPEC_CTRL, &phy_data);
		regs_buff[17] = (u32)phy_data; /* extended 10bt distance */
		regs_buff[18] = regs_buff[13]; /* cable polarity */
		regs_buff[19] = 0;  /* Dummy (to align w/ IGP phy reg dump) */
		regs_buff[20] = regs_buff[17]; /* polarity correction */
		/* phy receive errors */
		regs_buff[22] = adapter->phy_stats.receive_errors;
		regs_buff[23] = regs_buff[13]; /* mdix mode */
	}
	regs_buff[21] = 0;	/* was idle_errors */
	FUNC6(hw, MII_STAT1000, &phy_data);
	regs_buff[24] = (u32)phy_data;	/* phy local receiver status */
	regs_buff[25] = regs_buff[24];	/* phy remote receiver status */
}