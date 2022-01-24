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
struct TYPE_2__ {scalar_t__ media_type; } ;
struct e1000_hw {TYPE_1__ phy; } ;

/* Variables and functions */
 int E1000_RFCTL_IPV6_EX_DIS ; 
 int E1000_RFCTL_NEW_IPV6_EXT_DIS ; 
 int E1000_TCTL_MULR ; 
 int /*<<< orphan*/  RFCTL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  TCTL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ e1000_media_type_copper ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct e1000_hw *hw)
{
	u32 reg;

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
	reg &= ~(0xF << 27);	/* 30:27 */
	if (hw->phy.media_type != e1000_media_type_copper)
		reg &= ~(1 << 20);
	FUNC3(FUNC0(0), reg);

	/* Transmit Arbitration Control 1 */
	reg = FUNC2(FUNC0(1));
	if (FUNC2(TCTL) & E1000_TCTL_MULR)
		reg &= ~(1 << 28);
	else
		reg |= (1 << 28);
	FUNC3(FUNC0(1), reg);

	/* Disable IPv6 extension header parsing because some malformed
	 * IPv6 headers can hang the Rx.
	 */
	reg = FUNC2(RFCTL);
	reg |= (E1000_RFCTL_IPV6_EX_DIS | E1000_RFCTL_NEW_IPV6_EXT_DIS);
	FUNC3(RFCTL, reg);
}