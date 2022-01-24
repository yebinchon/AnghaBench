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
typedef  int u32 ;
struct TYPE_2__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_1__ mac; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL ; 
 int /*<<< orphan*/  CTRL_EXT ; 
 int E1000_CTRL_EXT_PHYPDEN ; 
 int E1000_CTRL_MEHE ; 
 int E1000_PBECCSTS_ECC_ENABLE ; 
 int E1000_RFCTL_IPV6_EX_DIS ; 
 int E1000_RFCTL_NEW_IPV6_EXT_DIS ; 
 int E1000_RFCTL_NFSR_DIS ; 
 int E1000_RFCTL_NFSW_DIS ; 
 int E1000_TCTL_MULR ; 
 int /*<<< orphan*/  PBECCSTS ; 
 int /*<<< orphan*/  RFCTL ; 
 int /*<<< orphan*/  STATUS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  TCTL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ e1000_ich8lan ; 
 scalar_t__ e1000_pch_lpt ; 
 scalar_t__ e1000_pchlan ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct e1000_hw *hw)
{
	u32 reg;

	/* Extended Device Control */
	reg = FUNC2(CTRL_EXT);
	reg |= (1 << 22);
	/* Enable PHY low-power state when MAC is at D3 w/o WoL */
	if (hw->mac.type >= e1000_pchlan)
		reg |= E1000_CTRL_EXT_PHYPDEN;
	FUNC3(CTRL_EXT, reg);

	/* Transmit Descriptor Control 0 */
	reg = FUNC2(FUNC1(0));
	reg |= (1 << 22);
	FUNC3(FUNC1(0), reg);

	/* Transmit Descriptor Control 1 */
	reg = FUNC2(FUNC1(1));
	reg |= (1 << 22);
	FUNC3(FUNC1(1), reg);

	/* Transmit Arbitration Control 0 */
	reg = FUNC2(FUNC0(0));
	if (hw->mac.type == e1000_ich8lan)
		reg |= (1 << 28) | (1 << 29);
	reg |= (1 << 23) | (1 << 24) | (1 << 26) | (1 << 27);
	FUNC3(FUNC0(0), reg);

	/* Transmit Arbitration Control 1 */
	reg = FUNC2(FUNC0(1));
	if (FUNC2(TCTL) & E1000_TCTL_MULR)
		reg &= ~(1 << 28);
	else
		reg |= (1 << 28);
	reg |= (1 << 24) | (1 << 26) | (1 << 30);
	FUNC3(FUNC0(1), reg);

	/* Device Status */
	if (hw->mac.type == e1000_ich8lan) {
		reg = FUNC2(STATUS);
		reg &= ~(1 << 31);
		FUNC3(STATUS, reg);
	}

	/* work-around descriptor data corruption issue during nfs v2 udp
	 * traffic, just disable the nfs filtering capability
	 */
	reg = FUNC2(RFCTL);
	reg |= (E1000_RFCTL_NFSW_DIS | E1000_RFCTL_NFSR_DIS);

	/* Disable IPv6 extension header parsing because some malformed
	 * IPv6 headers can hang the Rx.
	 */
	if (hw->mac.type == e1000_ich8lan)
		reg |= (E1000_RFCTL_IPV6_EX_DIS | E1000_RFCTL_NEW_IPV6_EXT_DIS);
	FUNC3(RFCTL, reg);

	/* Enable ECC on Lynxpoint */
	if (hw->mac.type == e1000_pch_lpt) {
		reg = FUNC2(PBECCSTS);
		reg |= E1000_PBECCSTS_ECC_ENABLE;
		FUNC3(PBECCSTS, reg);

		reg = FUNC2(CTRL);
		reg |= E1000_CTRL_MEHE;
		FUNC3(CTRL, reg);
	}
}