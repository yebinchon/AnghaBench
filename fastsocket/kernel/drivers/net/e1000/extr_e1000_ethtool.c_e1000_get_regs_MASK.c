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
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct net_device {int dummy; } ;
struct ethtool_regs {int version; } ;
struct e1000_hw {int revision_id; int device_id; scalar_t__ phy_type; scalar_t__ mac_type; scalar_t__ media_type; } ;
struct TYPE_2__ {scalar_t__ receive_errors; scalar_t__ idle_errors; } ;
struct e1000_adapter {TYPE_1__ phy_stats; struct e1000_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL ; 
 int E1000_REGS_LEN ; 
 int IGP01E1000_PHY_AGC_A ; 
 int IGP01E1000_PHY_AGC_B ; 
 int IGP01E1000_PHY_AGC_C ; 
 int IGP01E1000_PHY_AGC_D ; 
 int IGP01E1000_PHY_PAGE_SELECT ; 
 int IGP01E1000_PHY_PCS_INIT_REG ; 
 int IGP01E1000_PHY_PORT_STATUS ; 
 int M88E1000_PHY_SPEC_CTRL ; 
 int M88E1000_PHY_SPEC_STATUS ; 
 int /*<<< orphan*/  MANC ; 
 int PHY_1000T_STATUS ; 
 int /*<<< orphan*/  RCTL ; 
 int /*<<< orphan*/  RDH ; 
 int /*<<< orphan*/  RDLEN ; 
 int /*<<< orphan*/  RDT ; 
 int /*<<< orphan*/  RDTR ; 
 int /*<<< orphan*/  STATUS ; 
 int /*<<< orphan*/  TCTL ; 
 int /*<<< orphan*/  TDH ; 
 int /*<<< orphan*/  TDLEN ; 
 int /*<<< orphan*/  TDT ; 
 int /*<<< orphan*/  TIDV ; 
 scalar_t__ e1000_82540 ; 
 scalar_t__ e1000_media_type_copper ; 
 scalar_t__ e1000_phy_igp ; 
 int /*<<< orphan*/  FUNC0 (struct e1000_hw*,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (struct e1000_hw*,int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,int) ; 
 struct e1000_adapter* FUNC4 (struct net_device*) ; 

__attribute__((used)) static void FUNC5(struct net_device *netdev, struct ethtool_regs *regs,
			   void *p)
{
	struct e1000_adapter *adapter = FUNC4(netdev);
	struct e1000_hw *hw = &adapter->hw;
	u32 *regs_buff = p;
	u16 phy_data;

	FUNC3(p, 0, E1000_REGS_LEN * sizeof(u32));

	regs->version = (1 << 24) | (hw->revision_id << 16) | hw->device_id;

	regs_buff[0]  = FUNC2(CTRL);
	regs_buff[1]  = FUNC2(STATUS);

	regs_buff[2]  = FUNC2(RCTL);
	regs_buff[3]  = FUNC2(RDLEN);
	regs_buff[4]  = FUNC2(RDH);
	regs_buff[5]  = FUNC2(RDT);
	regs_buff[6]  = FUNC2(RDTR);

	regs_buff[7]  = FUNC2(TCTL);
	regs_buff[8]  = FUNC2(TDLEN);
	regs_buff[9]  = FUNC2(TDH);
	regs_buff[10] = FUNC2(TDT);
	regs_buff[11] = FUNC2(TIDV);

	regs_buff[12] = hw->phy_type;  /* PHY type (IGP=1, M88=0) */
	if (hw->phy_type == e1000_phy_igp) {
		FUNC1(hw, IGP01E1000_PHY_PAGE_SELECT,
				    IGP01E1000_PHY_AGC_A);
		FUNC0(hw, IGP01E1000_PHY_AGC_A &
				   IGP01E1000_PHY_PAGE_SELECT, &phy_data);
		regs_buff[13] = (u32)phy_data; /* cable length */
		FUNC1(hw, IGP01E1000_PHY_PAGE_SELECT,
				    IGP01E1000_PHY_AGC_B);
		FUNC0(hw, IGP01E1000_PHY_AGC_B &
				   IGP01E1000_PHY_PAGE_SELECT, &phy_data);
		regs_buff[14] = (u32)phy_data; /* cable length */
		FUNC1(hw, IGP01E1000_PHY_PAGE_SELECT,
				    IGP01E1000_PHY_AGC_C);
		FUNC0(hw, IGP01E1000_PHY_AGC_C &
				   IGP01E1000_PHY_PAGE_SELECT, &phy_data);
		regs_buff[15] = (u32)phy_data; /* cable length */
		FUNC1(hw, IGP01E1000_PHY_PAGE_SELECT,
				    IGP01E1000_PHY_AGC_D);
		FUNC0(hw, IGP01E1000_PHY_AGC_D &
				   IGP01E1000_PHY_PAGE_SELECT, &phy_data);
		regs_buff[16] = (u32)phy_data; /* cable length */
		regs_buff[17] = 0; /* extended 10bt distance (not needed) */
		FUNC1(hw, IGP01E1000_PHY_PAGE_SELECT, 0x0);
		FUNC0(hw, IGP01E1000_PHY_PORT_STATUS &
				   IGP01E1000_PHY_PAGE_SELECT, &phy_data);
		regs_buff[18] = (u32)phy_data; /* cable polarity */
		FUNC1(hw, IGP01E1000_PHY_PAGE_SELECT,
				    IGP01E1000_PHY_PCS_INIT_REG);
		FUNC0(hw, IGP01E1000_PHY_PCS_INIT_REG &
				   IGP01E1000_PHY_PAGE_SELECT, &phy_data);
		regs_buff[19] = (u32)phy_data; /* cable polarity */
		regs_buff[20] = 0; /* polarity correction enabled (always) */
		regs_buff[22] = 0; /* phy receive errors (unavailable) */
		regs_buff[23] = regs_buff[18]; /* mdix mode */
		FUNC1(hw, IGP01E1000_PHY_PAGE_SELECT, 0x0);
	} else {
		FUNC0(hw, M88E1000_PHY_SPEC_STATUS, &phy_data);
		regs_buff[13] = (u32)phy_data; /* cable length */
		regs_buff[14] = 0;  /* Dummy (to align w/ IGP phy reg dump) */
		regs_buff[15] = 0;  /* Dummy (to align w/ IGP phy reg dump) */
		regs_buff[16] = 0;  /* Dummy (to align w/ IGP phy reg dump) */
		FUNC0(hw, M88E1000_PHY_SPEC_CTRL, &phy_data);
		regs_buff[17] = (u32)phy_data; /* extended 10bt distance */
		regs_buff[18] = regs_buff[13]; /* cable polarity */
		regs_buff[19] = 0;  /* Dummy (to align w/ IGP phy reg dump) */
		regs_buff[20] = regs_buff[17]; /* polarity correction */
		/* phy receive errors */
		regs_buff[22] = adapter->phy_stats.receive_errors;
		regs_buff[23] = regs_buff[13]; /* mdix mode */
	}
	regs_buff[21] = adapter->phy_stats.idle_errors;  /* phy idle errors */
	FUNC0(hw, PHY_1000T_STATUS, &phy_data);
	regs_buff[24] = (u32)phy_data;  /* phy local receiver status */
	regs_buff[25] = regs_buff[24];  /* phy remote receiver status */
	if (hw->mac_type >= e1000_82540 &&
	    hw->media_type == e1000_media_type_copper) {
		regs_buff[26] = FUNC2(MANC);
	}
}