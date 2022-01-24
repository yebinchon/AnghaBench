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
typedef  int u64 ;
typedef  int u32 ;
struct e1000_mac_info {int type; int rar_entry_count; int mta_reg_count; } ;
struct e1000_hw {struct e1000_mac_info mac; } ;
struct e1000_adapter {int flags; struct e1000_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  E1000_FCAH ; 
 int /*<<< orphan*/  E1000_FCAL ; 
 int /*<<< orphan*/  E1000_FCRTH ; 
 int /*<<< orphan*/  E1000_FCT ; 
 int /*<<< orphan*/  E1000_FCTTV ; 
 int E1000_FWSM_WLOCK_MAC_MASK ; 
 int E1000_FWSM_WLOCK_MAC_SHIFT ; 
 int /*<<< orphan*/  E1000_MTA ; 
 int /*<<< orphan*/  E1000_RA ; 
 int /*<<< orphan*/  E1000_RCTL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E1000_RDTR ; 
 int /*<<< orphan*/  E1000_TCTL ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E1000_TIDV ; 
 int /*<<< orphan*/  E1000_TIPG ; 
 int /*<<< orphan*/  E1000_TXCW ; 
 int /*<<< orphan*/  E1000_VET ; 
 int FLAG_IS_ICH ; 
 int /*<<< orphan*/  FWSM ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  STATUS ; 
#define  e1000_80003es2lan 134 
#define  e1000_82571 133 
#define  e1000_82572 132 
#define  e1000_ich10lan 131 
#define  e1000_pch2lan 130 
#define  e1000_pch_lpt 129 
#define  e1000_pchlan 128 
 int /*<<< orphan*/  FUNC11 (char*,int,int) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC14(struct e1000_adapter *adapter, u64 *data)
{
	struct e1000_hw *hw = &adapter->hw;
	struct e1000_mac_info *mac = &adapter->hw.mac;
	u32 value;
	u32 before;
	u32 after;
	u32 i;
	u32 toggle;
	u32 mask;
	u32 wlock_mac = 0;

	/* The status register is Read Only, so a write should fail.
	 * Some bits that get toggled are ignored.  There are several bits
	 * on newer hardware that are r/w.
	 */
	switch (mac->type) {
	case e1000_82571:
	case e1000_82572:
	case e1000_80003es2lan:
		toggle = 0x7FFFF3FF;
		break;
	default:
		toggle = 0x7FFFF033;
		break;
	}

	before = FUNC12(STATUS);
	value = (FUNC12(STATUS) & toggle);
	FUNC13(STATUS, toggle);
	after = FUNC12(STATUS) & toggle;
	if (value != after) {
		FUNC11("failed STATUS register test got: 0x%08X expected: 0x%08X\n",
		      after, value);
		*data = 1;
		return 1;
	}
	/* restore previous status */
	FUNC13(STATUS, before);

	if (!(adapter->flags & FLAG_IS_ICH)) {
		FUNC8(E1000_FCAL, 0xFFFFFFFF, 0xFFFFFFFF);
		FUNC8(E1000_FCAH, 0x0000FFFF, 0xFFFFFFFF);
		FUNC8(E1000_FCT, 0x0000FFFF, 0xFFFFFFFF);
		FUNC8(E1000_VET, 0x0000FFFF, 0xFFFFFFFF);
	}

	FUNC8(E1000_RDTR, 0x0000FFFF, 0xFFFFFFFF);
	FUNC8(FUNC0(0), 0xFFFFFFFF, 0xFFFFFFFF);
	FUNC8(FUNC3(0), 0x000FFF80, 0x000FFFFF);
	FUNC8(FUNC2(0), 0x0000FFFF, 0x0000FFFF);
	FUNC8(FUNC4(0), 0x0000FFFF, 0x0000FFFF);
	FUNC8(E1000_FCRTH, 0x0000FFF8, 0x0000FFF8);
	FUNC8(E1000_FCTTV, 0x0000FFFF, 0x0000FFFF);
	FUNC8(E1000_TIPG, 0x3FFFFFFF, 0x3FFFFFFF);
	FUNC8(FUNC5(0), 0xFFFFFFFF, 0xFFFFFFFF);
	FUNC8(FUNC7(0), 0x000FFF80, 0x000FFFFF);

	FUNC10(E1000_RCTL, 0xFFFFFFFF, 0x00000000);

	before = ((adapter->flags & FLAG_IS_ICH) ? 0x06C3B33E : 0x06DFB3FE);
	FUNC10(E1000_RCTL, before, 0x003FFFFB);
	FUNC10(E1000_TCTL, 0xFFFFFFFF, 0x00000000);

	FUNC10(E1000_RCTL, before, 0xFFFFFFFF);
	FUNC8(FUNC1(0), 0xFFFFFFF0, 0xFFFFFFFF);
	if (!(adapter->flags & FLAG_IS_ICH))
		FUNC8(E1000_TXCW, 0xC000FFFF, 0x0000FFFF);
	FUNC8(FUNC6(0), 0xFFFFFFF0, 0xFFFFFFFF);
	FUNC8(E1000_TIDV, 0x0000FFFF, 0x0000FFFF);
	mask = 0x8003FFFF;
	switch (mac->type) {
	case e1000_ich10lan:
	case e1000_pchlan:
	case e1000_pch2lan:
	case e1000_pch_lpt:
		mask |= (1 << 18);
		break;
	default:
		break;
	}

	if (mac->type == e1000_pch_lpt)
		wlock_mac = (FUNC12(FWSM) & E1000_FWSM_WLOCK_MAC_MASK) >>
		    E1000_FWSM_WLOCK_MAC_SHIFT;

	for (i = 0; i < mac->rar_entry_count; i++) {
		if (mac->type == e1000_pch_lpt) {
			/* Cannot test write-protected SHRAL[n] registers */
			if ((wlock_mac == 1) || (wlock_mac && (i > wlock_mac)))
				continue;

			/* SHRAH[9] different than the others */
			if (i == 10)
				mask |= (1 << 30);
			else
				mask &= ~(1 << 30);
		}

		FUNC9(E1000_RA, ((i << 1) + 1), mask,
				       0xFFFFFFFF);
	}

	for (i = 0; i < mac->mta_reg_count; i++)
		FUNC9(E1000_MTA, i, 0xFFFFFFFF, 0xFFFFFFFF);

	*data = 0;

	return 0;
}