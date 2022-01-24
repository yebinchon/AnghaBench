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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct t1_rx_mode {int dummy; } ;
struct cmac {TYPE_1__* instance; } ;
struct TYPE_2__ {int enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int MAC_DIRECTION_RX ; 
 int SUNI1x10GEXP_BITMSK_RXXG_MHASH_EN ; 
 int SUNI1x10GEXP_BITMSK_RXXG_PMODE ; 
 int /*<<< orphan*/  SUNI1x10GEXP_REG_RXXG_ADDRESS_FILTER_CONTROL_2 ; 
 int /*<<< orphan*/  SUNI1x10GEXP_REG_RXXG_MULTICAST_HASH_HIGH ; 
 int /*<<< orphan*/  SUNI1x10GEXP_REG_RXXG_MULTICAST_HASH_LOW ; 
 int /*<<< orphan*/  SUNI1x10GEXP_REG_RXXG_MULTICAST_HASH_MIDHIGH ; 
 int /*<<< orphan*/  SUNI1x10GEXP_REG_RXXG_MULTICAST_HASH_MIDLOW ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct cmac*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cmac*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct cmac*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct cmac*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC5 (struct t1_rx_mode*) ; 
 scalar_t__ FUNC6 (struct t1_rx_mode*) ; 
 scalar_t__ FUNC7 (struct t1_rx_mode*) ; 
 scalar_t__ FUNC8 (struct t1_rx_mode*) ; 

__attribute__((used)) static int FUNC9(struct cmac *cmac, struct t1_rx_mode *rm)
{
	int enabled = cmac->instance->enabled & MAC_DIRECTION_RX;
	u32 rx_mode;

	/* Disable MAC RX before reconfiguring it */
	if (enabled)
		FUNC1(cmac, MAC_DIRECTION_RX);

	FUNC3(cmac, SUNI1x10GEXP_REG_RXXG_ADDRESS_FILTER_CONTROL_2, &rx_mode);
	rx_mode &= ~(SUNI1x10GEXP_BITMSK_RXXG_PMODE |
		     SUNI1x10GEXP_BITMSK_RXXG_MHASH_EN);
	FUNC4(cmac, SUNI1x10GEXP_REG_RXXG_ADDRESS_FILTER_CONTROL_2,
		(u16)rx_mode);

	if (FUNC8(rm)) {
		/* Promiscuous mode. */
		rx_mode |= SUNI1x10GEXP_BITMSK_RXXG_PMODE;
	}
	if (FUNC6(rm)) {
		/* Accept all multicast. */
		FUNC4(cmac, SUNI1x10GEXP_REG_RXXG_MULTICAST_HASH_LOW, 0xffff);
		FUNC4(cmac, SUNI1x10GEXP_REG_RXXG_MULTICAST_HASH_MIDLOW, 0xffff);
		FUNC4(cmac, SUNI1x10GEXP_REG_RXXG_MULTICAST_HASH_MIDHIGH, 0xffff);
		FUNC4(cmac, SUNI1x10GEXP_REG_RXXG_MULTICAST_HASH_HIGH, 0xffff);
		rx_mode |= SUNI1x10GEXP_BITMSK_RXXG_MHASH_EN;
	} else if (FUNC7(rm)) {
		/* Accept one or more multicast(s). */
		u8 *addr;
		int bit;
		u16 mc_filter[4] = { 0, };

		while ((addr = FUNC5(rm))) {
			bit = (FUNC0(ETH_ALEN, addr) >> 23) & 0x3f;	/* bit[23:28] */
			mc_filter[bit >> 4] |= 1 << (bit & 0xf);
		}
		FUNC4(cmac, SUNI1x10GEXP_REG_RXXG_MULTICAST_HASH_LOW, mc_filter[0]);
		FUNC4(cmac, SUNI1x10GEXP_REG_RXXG_MULTICAST_HASH_MIDLOW, mc_filter[1]);
		FUNC4(cmac, SUNI1x10GEXP_REG_RXXG_MULTICAST_HASH_MIDHIGH, mc_filter[2]);
		FUNC4(cmac, SUNI1x10GEXP_REG_RXXG_MULTICAST_HASH_HIGH, mc_filter[3]);
		rx_mode |= SUNI1x10GEXP_BITMSK_RXXG_MHASH_EN;
	}

	FUNC4(cmac, SUNI1x10GEXP_REG_RXXG_ADDRESS_FILTER_CONTROL_2, (u16)rx_mode);

	if (enabled)
		FUNC2(cmac, MAC_DIRECTION_RX);

	return 0;
}