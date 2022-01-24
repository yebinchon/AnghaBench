#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int /*<<< orphan*/  (* u16 ) (int,int /*<<< orphan*/ ) ;
struct net_device {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* fc_enable ) (struct ixgbe_hw*) ;} ;
struct TYPE_7__ {TYPE_2__ ops; } ;
struct ixgbe_hw {TYPE_3__ mac; } ;
struct ixgbe_dcb_config {scalar_t__ pfc_mode_enable; } ;
struct TYPE_8__ {scalar_t__ up; } ;
struct ixgbe_adapter {int dcbx_cap; int dcb_set_bitmap; TYPE_4__ fcoe; TYPE_1__* netdev; struct ixgbe_hw hw; struct ixgbe_dcb_config dcb_cfg; } ;
struct dcb_app {int /*<<< orphan*/  protocol; int /*<<< orphan*/  selector; } ;
struct TYPE_5__ {int mtu; int features; } ;

/* Variables and functions */
 int BIT_APP_UPCHG ; 
 int BIT_PFC ; 
 int BIT_PG_RX ; 
 int BIT_PG_TX ; 
 int /*<<< orphan*/  DCB_APP_IDTYPE_ETHTYPE ; 
 int DCB_CAP_DCBX_VER_CEE ; 
 int DCB_HW_CHG ; 
 int DCB_HW_CHG_RST ; 
 int DCB_NO_HW_CHG ; 
 int /*<<< orphan*/  DCB_RX_CONFIG ; 
 int /*<<< orphan*/  DCB_TX_CONFIG ; 
 int ETH_FCS_LEN ; 
 int ETH_HLEN ; 
 int /*<<< orphan*/  ETH_P_FCOE ; 
 int IEEE_8021QAZ_MAX_TCS ; 
 int /*<<< orphan*/  IXGBE_FCOE_JUMBO_FRAME_SIZE ; 
 int MAX_TRAFFIC_CLASS ; 
 int MAX_USER_PRIORITY ; 
 int NETIF_F_FCOE_MTU ; 
 int FUNC0 (struct net_device*,struct dcb_app*) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct ixgbe_adapter*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_hw*,struct ixgbe_dcb_config*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_hw*,int /*<<< orphan*/  (*) (int,int /*<<< orphan*/ ),int /*<<< orphan*/  (*) (int,int /*<<< orphan*/ ),int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct ixgbe_hw*,int,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct ixgbe_dcb_config*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct ixgbe_dcb_config*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct ixgbe_dcb_config*,int /*<<< orphan*/  (*) (int,int /*<<< orphan*/ )) ; 
 int /*<<< orphan*/  FUNC9 (struct ixgbe_dcb_config*,int*) ; 
 int /*<<< orphan*/  FUNC10 (struct ixgbe_dcb_config*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC11 (struct ixgbe_dcb_config*,int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (int,int /*<<< orphan*/ )) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct ixgbe_adapter*) ; 
 struct ixgbe_adapter* FUNC14 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct net_device*,int,int) ; 
 int /*<<< orphan*/  FUNC16 (struct ixgbe_hw*) ; 

__attribute__((used)) static u8 FUNC17(struct net_device *netdev)
{
	struct ixgbe_adapter *adapter = FUNC14(netdev);
	struct ixgbe_dcb_config *dcb_cfg = &adapter->dcb_cfg;
	struct ixgbe_hw *hw = &adapter->hw;
	int ret = DCB_NO_HW_CHG;
	int i;

	/* Fail command if not in CEE mode */
	if (!(adapter->dcbx_cap & DCB_CAP_DCBX_VER_CEE))
		return ret;

	adapter->dcb_set_bitmap |= FUNC2(adapter,
						      MAX_TRAFFIC_CLASS);
	if (!adapter->dcb_set_bitmap)
		return ret;

	if (adapter->dcb_set_bitmap & (BIT_PG_TX|BIT_PG_RX)) {
		u16 refill[MAX_TRAFFIC_CLASS], max[MAX_TRAFFIC_CLASS];
		u8 bwg_id[MAX_TRAFFIC_CLASS], prio_type[MAX_TRAFFIC_CLASS];
		/* Priority to TC mapping in CEE case default to 1:1 */
		u8 prio_tc[MAX_USER_PRIORITY];
		int max_frame = adapter->netdev->mtu + ETH_HLEN + ETH_FCS_LEN;

#ifdef IXGBE_FCOE
		if (adapter->netdev->features & NETIF_F_FCOE_MTU)
			max_frame = max(max_frame, IXGBE_FCOE_JUMBO_FRAME_SIZE);
#endif

		FUNC3(hw, dcb_cfg, max_frame,
					       DCB_TX_CONFIG);
		FUNC3(hw, dcb_cfg, max_frame,
					       DCB_RX_CONFIG);

		FUNC11(dcb_cfg, DCB_TX_CONFIG, refill);
		FUNC8(dcb_cfg, max);
		FUNC6(dcb_cfg, DCB_TX_CONFIG, bwg_id);
		FUNC10(dcb_cfg, DCB_TX_CONFIG, prio_type);
		FUNC7(dcb_cfg, DCB_TX_CONFIG, prio_tc);

		FUNC4(hw, refill, max, bwg_id,
					prio_type, prio_tc);

		for (i = 0; i < IEEE_8021QAZ_MAX_TCS; i++)
			FUNC15(netdev, i, prio_tc[i]);

		ret = DCB_HW_CHG_RST;
	}

	if (adapter->dcb_set_bitmap & BIT_PFC) {
		if (dcb_cfg->pfc_mode_enable) {
			u8 pfc_en;
			u8 prio_tc[MAX_USER_PRIORITY];

			FUNC7(dcb_cfg, DCB_TX_CONFIG, prio_tc);
			FUNC9(dcb_cfg, &pfc_en);
			FUNC5(hw, pfc_en, prio_tc);
		} else {
			hw->mac.ops.fc_enable(hw);
		}

		FUNC13(adapter);

		ret = DCB_HW_CHG;
	}

#ifdef IXGBE_FCOE
	/* Reprogam FCoE hardware offloads when the traffic class
	 * FCoE is using changes. This happens if the APP info
	 * changes or the up2tc mapping is updated.
	 */
	if (adapter->dcb_set_bitmap & BIT_APP_UPCHG) {
		struct dcb_app app = {
				      .selector = DCB_APP_IDTYPE_ETHTYPE,
				      .protocol = ETH_P_FCOE,
				     };
		u8 up = dcb_getapp(netdev, &app);

		adapter->fcoe.up = ffs(up) - 1;
		ixgbe_dcbnl_devreset(netdev);
		ret = DCB_HW_CHG_RST;
	}
#endif

	adapter->dcb_set_bitmap = 0x00;
	return ret;
}