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
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct TYPE_5__ {int /*<<< orphan*/  func; } ;
struct TYPE_7__ {scalar_t__ (* read ) (struct e1000_hw*,scalar_t__,int,int*) ;} ;
struct TYPE_8__ {TYPE_3__ ops; } ;
struct TYPE_6__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_1__ bus; TYPE_4__ nvm; TYPE_2__ mac; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  E1000_MDICNFG ; 
 int /*<<< orphan*/  E1000_MDICNFG_COM_MDIO ; 
 int /*<<< orphan*/  E1000_MDICNFG_EXT_MDIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ NVM_INIT_CONTROL3_PORT_A ; 
 int NVM_WORD24_COM_MDIO ; 
 int NVM_WORD24_EXT_MDIO ; 
 scalar_t__ e1000_82580 ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct e1000_hw*,scalar_t__,int,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static s32 FUNC6(struct e1000_hw *hw)
{
	s32 ret_val = 0;
	u32 mdicnfg;
	u16 nvm_data = 0;

	if (hw->mac.type != e1000_82580)
		goto out;
	if (!FUNC2(hw))
		goto out;

	ret_val = hw->nvm.ops.read(hw, NVM_INIT_CONTROL3_PORT_A +
				   FUNC0(hw->bus.func), 1,
				   &nvm_data);
	if (ret_val) {
		FUNC1("NVM Read Error\n");
		goto out;
	}

	mdicnfg = FUNC3(E1000_MDICNFG);
	if (nvm_data & NVM_WORD24_EXT_MDIO)
		mdicnfg |= E1000_MDICNFG_EXT_MDIO;
	if (nvm_data & NVM_WORD24_COM_MDIO)
		mdicnfg |= E1000_MDICNFG_COM_MDIO;
	FUNC5(E1000_MDICNFG, mdicnfg);
out:
	return ret_val;
}