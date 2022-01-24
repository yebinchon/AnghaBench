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
typedef  int u16 ;
struct TYPE_5__ {int /*<<< orphan*/  (* read_reg ) (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ;int /*<<< orphan*/  (* identify ) (struct ixgbe_hw*) ;} ;
struct TYPE_6__ {scalar_t__ id; TYPE_2__ ops; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct ixgbe_hw {TYPE_3__ phy; TYPE_1__ mac; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  IXGBE_BPRC ; 
 int /*<<< orphan*/  IXGBE_BPTC ; 
 int /*<<< orphan*/  IXGBE_CRCERRS ; 
 int /*<<< orphan*/  IXGBE_ERRBC ; 
 int /*<<< orphan*/  IXGBE_GORCH ; 
 int /*<<< orphan*/  IXGBE_GORCL ; 
 int /*<<< orphan*/  IXGBE_GOTCH ; 
 int /*<<< orphan*/  IXGBE_GOTCL ; 
 int /*<<< orphan*/  IXGBE_GPRC ; 
 int /*<<< orphan*/  IXGBE_GPTC ; 
 int /*<<< orphan*/  IXGBE_ILLERRC ; 
 int /*<<< orphan*/  IXGBE_LDPCECH ; 
 int /*<<< orphan*/  IXGBE_LDPCECL ; 
 int /*<<< orphan*/  IXGBE_LXOFFRXC ; 
 int /*<<< orphan*/  IXGBE_LXOFFRXCNT ; 
 int /*<<< orphan*/  IXGBE_LXOFFTXC ; 
 int /*<<< orphan*/  IXGBE_LXONRXC ; 
 int /*<<< orphan*/  IXGBE_LXONRXCNT ; 
 int /*<<< orphan*/  IXGBE_LXONTXC ; 
 int /*<<< orphan*/  IXGBE_MLFC ; 
 int /*<<< orphan*/  IXGBE_MNGPDC ; 
 int /*<<< orphan*/  IXGBE_MNGPRC ; 
 int /*<<< orphan*/  IXGBE_MNGPTC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  IXGBE_MPRC ; 
 int /*<<< orphan*/  IXGBE_MPTC ; 
 int /*<<< orphan*/  IXGBE_MRFC ; 
 int /*<<< orphan*/  IXGBE_MSPDC ; 
 int /*<<< orphan*/  IXGBE_PCRC8ECH ; 
 int /*<<< orphan*/  IXGBE_PCRC8ECL ; 
 int /*<<< orphan*/  IXGBE_PRC1023 ; 
 int /*<<< orphan*/  IXGBE_PRC127 ; 
 int /*<<< orphan*/  IXGBE_PRC1522 ; 
 int /*<<< orphan*/  IXGBE_PRC255 ; 
 int /*<<< orphan*/  IXGBE_PRC511 ; 
 int /*<<< orphan*/  IXGBE_PRC64 ; 
 int /*<<< orphan*/  IXGBE_PTC1023 ; 
 int /*<<< orphan*/  IXGBE_PTC127 ; 
 int /*<<< orphan*/  IXGBE_PTC1522 ; 
 int /*<<< orphan*/  IXGBE_PTC255 ; 
 int /*<<< orphan*/  IXGBE_PTC511 ; 
 int /*<<< orphan*/  IXGBE_PTC64 ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IXGBE_RFC ; 
 int /*<<< orphan*/  IXGBE_RJC ; 
 int /*<<< orphan*/  IXGBE_RLEC ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 int /*<<< orphan*/  IXGBE_ROC ; 
 int /*<<< orphan*/  IXGBE_RUC ; 
 int /*<<< orphan*/  IXGBE_TORH ; 
 int /*<<< orphan*/  IXGBE_TORL ; 
 int /*<<< orphan*/  IXGBE_TPR ; 
 int /*<<< orphan*/  IXGBE_TPT ; 
 int /*<<< orphan*/  MDIO_MMD_PCS ; 
 scalar_t__ ixgbe_mac_82598EB ; 
 scalar_t__ ixgbe_mac_82599EB ; 
 scalar_t__ ixgbe_mac_X540 ; 
 int /*<<< orphan*/  FUNC19 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC20 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC21 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC22 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC23 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

s32 FUNC24(struct ixgbe_hw *hw)
{
	u16 i = 0;

	FUNC17(hw, IXGBE_CRCERRS);
	FUNC17(hw, IXGBE_ILLERRC);
	FUNC17(hw, IXGBE_ERRBC);
	FUNC17(hw, IXGBE_MSPDC);
	for (i = 0; i < 8; i++)
		FUNC17(hw, FUNC0(i));

	FUNC17(hw, IXGBE_MLFC);
	FUNC17(hw, IXGBE_MRFC);
	FUNC17(hw, IXGBE_RLEC);
	FUNC17(hw, IXGBE_LXONTXC);
	FUNC17(hw, IXGBE_LXOFFTXC);
	if (hw->mac.type >= ixgbe_mac_82599EB) {
		FUNC17(hw, IXGBE_LXONRXCNT);
		FUNC17(hw, IXGBE_LXOFFRXCNT);
	} else {
		FUNC17(hw, IXGBE_LXONRXC);
		FUNC17(hw, IXGBE_LXOFFRXC);
	}

	for (i = 0; i < 8; i++) {
		FUNC17(hw, FUNC7(i));
		FUNC17(hw, FUNC3(i));
		if (hw->mac.type >= ixgbe_mac_82599EB) {
			FUNC17(hw, FUNC6(i));
			FUNC17(hw, FUNC2(i));
		} else {
			FUNC17(hw, FUNC5(i));
			FUNC17(hw, FUNC1(i));
		}
	}
	if (hw->mac.type >= ixgbe_mac_82599EB)
		for (i = 0; i < 8; i++)
			FUNC17(hw, FUNC4(i));
	FUNC17(hw, IXGBE_PRC64);
	FUNC17(hw, IXGBE_PRC127);
	FUNC17(hw, IXGBE_PRC255);
	FUNC17(hw, IXGBE_PRC511);
	FUNC17(hw, IXGBE_PRC1023);
	FUNC17(hw, IXGBE_PRC1522);
	FUNC17(hw, IXGBE_GPRC);
	FUNC17(hw, IXGBE_BPRC);
	FUNC17(hw, IXGBE_MPRC);
	FUNC17(hw, IXGBE_GPTC);
	FUNC17(hw, IXGBE_GORCL);
	FUNC17(hw, IXGBE_GORCH);
	FUNC17(hw, IXGBE_GOTCL);
	FUNC17(hw, IXGBE_GOTCH);
	if (hw->mac.type == ixgbe_mac_82598EB)
		for (i = 0; i < 8; i++)
			FUNC17(hw, FUNC18(i));
	FUNC17(hw, IXGBE_RUC);
	FUNC17(hw, IXGBE_RFC);
	FUNC17(hw, IXGBE_ROC);
	FUNC17(hw, IXGBE_RJC);
	FUNC17(hw, IXGBE_MNGPRC);
	FUNC17(hw, IXGBE_MNGPDC);
	FUNC17(hw, IXGBE_MNGPTC);
	FUNC17(hw, IXGBE_TORL);
	FUNC17(hw, IXGBE_TORH);
	FUNC17(hw, IXGBE_TPR);
	FUNC17(hw, IXGBE_TPT);
	FUNC17(hw, IXGBE_PTC64);
	FUNC17(hw, IXGBE_PTC127);
	FUNC17(hw, IXGBE_PTC255);
	FUNC17(hw, IXGBE_PTC511);
	FUNC17(hw, IXGBE_PTC1023);
	FUNC17(hw, IXGBE_PTC1522);
	FUNC17(hw, IXGBE_MPTC);
	FUNC17(hw, IXGBE_BPTC);
	for (i = 0; i < 16; i++) {
		FUNC17(hw, FUNC14(i));
		FUNC17(hw, FUNC16(i));
		if (hw->mac.type >= ixgbe_mac_82599EB) {
			FUNC17(hw, FUNC10(i));
			FUNC17(hw, FUNC9(i));
			FUNC17(hw, FUNC13(i));
			FUNC17(hw, FUNC12(i));
			FUNC17(hw, FUNC15(i));
		} else {
			FUNC17(hw, FUNC8(i));
			FUNC17(hw, FUNC11(i));
		}
	}

	if (hw->mac.type == ixgbe_mac_X540) {
		if (hw->phy.id == 0)
			hw->phy.ops.identify(hw);
		hw->phy.ops.read_reg(hw, IXGBE_PCRC8ECL, MDIO_MMD_PCS, &i);
		hw->phy.ops.read_reg(hw, IXGBE_PCRC8ECH, MDIO_MMD_PCS, &i);
		hw->phy.ops.read_reg(hw, IXGBE_LDPCECL, MDIO_MMD_PCS, &i);
		hw->phy.ops.read_reg(hw, IXGBE_LDPCECH, MDIO_MMD_PCS, &i);
	}

	return 0;
}