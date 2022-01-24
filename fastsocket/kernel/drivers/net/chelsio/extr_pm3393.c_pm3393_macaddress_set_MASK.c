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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct cmac {TYPE_1__* instance; } ;
struct TYPE_2__ {int enabled; int /*<<< orphan*/  mac_addr; } ;

/* Variables and functions */
 int MAC_DIRECTION_RX ; 
 int MAC_DIRECTION_TX ; 
 int /*<<< orphan*/  SUNI1x10GEXP_REG_RXXG_ADDRESS_FILTER_CONTROL_0 ; 
 int /*<<< orphan*/  SUNI1x10GEXP_REG_RXXG_EXACT_MATCH_ADDR_1_HIGH ; 
 int /*<<< orphan*/  SUNI1x10GEXP_REG_RXXG_EXACT_MATCH_ADDR_1_LOW ; 
 int /*<<< orphan*/  SUNI1x10GEXP_REG_RXXG_EXACT_MATCH_ADDR_1_MID ; 
 int /*<<< orphan*/  SUNI1x10GEXP_REG_RXXG_SA_15_0 ; 
 int /*<<< orphan*/  SUNI1x10GEXP_REG_RXXG_SA_31_16 ; 
 int /*<<< orphan*/  SUNI1x10GEXP_REG_RXXG_SA_47_32 ; 
 int /*<<< orphan*/  SUNI1x10GEXP_REG_TXXG_SA_15_0 ; 
 int /*<<< orphan*/  SUNI1x10GEXP_REG_TXXG_SA_31_16 ; 
 int /*<<< orphan*/  SUNI1x10GEXP_REG_TXXG_SA_47_32 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cmac*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cmac*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct cmac*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct cmac*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct cmac *cmac, u8 ma[6])
{
	u32 val, lo, mid, hi, enabled = cmac->instance->enabled;

	/*
	 * MAC addr: 00:07:43:00:13:09
	 *
	 * ma[5] = 0x09
	 * ma[4] = 0x13
	 * ma[3] = 0x00
	 * ma[2] = 0x43
	 * ma[1] = 0x07
	 * ma[0] = 0x00
	 *
	 * The PM3393 requires byte swapping and reverse order entry
	 * when programming MAC addresses:
	 *
	 * low_bits[15:0]    = ma[1]:ma[0]
	 * mid_bits[31:16]   = ma[3]:ma[2]
	 * high_bits[47:32]  = ma[5]:ma[4]
	 */

	/* Store local copy */
	FUNC0(cmac->instance->mac_addr, ma, 6);

	lo  = ((u32) ma[1] << 8) | (u32) ma[0];
	mid = ((u32) ma[3] << 8) | (u32) ma[2];
	hi  = ((u32) ma[5] << 8) | (u32) ma[4];

	/* Disable Rx/Tx MAC before configuring it. */
	if (enabled)
		FUNC1(cmac, MAC_DIRECTION_RX | MAC_DIRECTION_TX);

	/* Set RXXG Station Address */
	FUNC4(cmac, SUNI1x10GEXP_REG_RXXG_SA_15_0, lo);
	FUNC4(cmac, SUNI1x10GEXP_REG_RXXG_SA_31_16, mid);
	FUNC4(cmac, SUNI1x10GEXP_REG_RXXG_SA_47_32, hi);

	/* Set TXXG Station Address */
	FUNC4(cmac, SUNI1x10GEXP_REG_TXXG_SA_15_0, lo);
	FUNC4(cmac, SUNI1x10GEXP_REG_TXXG_SA_31_16, mid);
	FUNC4(cmac, SUNI1x10GEXP_REG_TXXG_SA_47_32, hi);

	/* Setup Exact Match Filter 1 with our MAC address
	 *
	 * Must disable exact match filter before configuring it.
	 */
	FUNC3(cmac, SUNI1x10GEXP_REG_RXXG_ADDRESS_FILTER_CONTROL_0, &val);
	val &= 0xff0f;
	FUNC4(cmac, SUNI1x10GEXP_REG_RXXG_ADDRESS_FILTER_CONTROL_0, val);

	FUNC4(cmac, SUNI1x10GEXP_REG_RXXG_EXACT_MATCH_ADDR_1_LOW, lo);
	FUNC4(cmac, SUNI1x10GEXP_REG_RXXG_EXACT_MATCH_ADDR_1_MID, mid);
	FUNC4(cmac, SUNI1x10GEXP_REG_RXXG_EXACT_MATCH_ADDR_1_HIGH, hi);

	val |= 0x0090;
	FUNC4(cmac, SUNI1x10GEXP_REG_RXXG_ADDRESS_FILTER_CONTROL_0, val);

	if (enabled)
		FUNC2(cmac, enabled);
	return 0;
}