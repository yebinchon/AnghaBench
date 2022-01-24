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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
typedef  int u16 ;
struct bnx2x_phy {int addr; } ;
struct bnx2x {int dummy; } ;
typedef  int s8 ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int EINVAL ; 
 int /*<<< orphan*/  MDIO_PMA_DEVAD ; 
 int /*<<< orphan*/  MDIO_PMA_REG_CTRL ; 
 int /*<<< orphan*/  MDIO_PMA_REG_EDC_FFE_MAIN ; 
 int /*<<< orphan*/  MDIO_PMA_REG_TX_POWER_DOWN ; 
 int /*<<< orphan*/  MISC_REGISTERS_GPIO_2 ; 
 int /*<<< orphan*/  MISC_REGISTERS_GPIO_OUTPUT_HIGH ; 
 int /*<<< orphan*/  MISC_REGISTERS_GPIO_OUTPUT_LOW ; 
 int /*<<< orphan*/  NETIF_MSG_LINK ; 
 int NIG_MASK_MI_INT ; 
 int NIG_MASK_SERDES0_LINK_STATUS ; 
 int NIG_MASK_XGXS0_LINK10G ; 
 int NIG_MASK_XGXS0_LINK_STATUS ; 
 scalar_t__ NIG_REG_MASK_INTERRUPT_PORT0 ; 
 int /*<<< orphan*/  NIG_REG_PORT_SWAP ; 
 int /*<<< orphan*/  NIG_REG_STRAP_OVERRIDE ; 
 int PORT_0 ; 
 size_t PORT_1 ; 
 int PORT_MAX ; 
 scalar_t__ FUNC2 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct bnx2x*,struct bnx2x_phy*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x*,struct bnx2x_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct bnx2x*,struct bnx2x_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct bnx2x*,int) ; 
 scalar_t__ FUNC8 (struct bnx2x*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int,struct bnx2x_phy*) ; 
 int /*<<< orphan*/  FUNC9 (struct bnx2x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int,int) ; 

__attribute__((used)) static int FUNC12(struct bnx2x *bp,
				      u32 shmem_base_path[],
				      u32 shmem2_base_path[], u8 phy_index,
				      u32 chip_id)
{
	struct bnx2x_phy phy[PORT_MAX];
	struct bnx2x_phy *phy_blk[PORT_MAX];
	u16 val;
	s8 port = 0;
	s8 port_of_path = 0;
	u32 swap_val, swap_override;
	swap_val = FUNC2(bp,  NIG_REG_PORT_SWAP);
	swap_override = FUNC2(bp,  NIG_REG_STRAP_OVERRIDE);
	port ^= (swap_val && swap_override);
	FUNC7(bp, port);
	/* PART1 - Reset both phys */
	for (port = PORT_MAX - 1; port >= PORT_0; port--) {
		u32 shmem_base, shmem2_base;
		/* In E2, same phy is using for port0 of the two paths */
		if (FUNC0(bp)) {
			shmem_base = shmem_base_path[0];
			shmem2_base = shmem2_base_path[0];
			port_of_path = port;
		} else {
			shmem_base = shmem_base_path[port];
			shmem2_base = shmem2_base_path[port];
			port_of_path = 0;
		}

		/* Extract the ext phy address for the port */
		if (FUNC8(bp, phy_index, shmem_base, shmem2_base,
				       port_of_path, &phy[port]) !=
		    0) {
			FUNC1(NETIF_MSG_LINK, "populate_phy failed\n");
			return -EINVAL;
		}
		/* Disable attentions */
		FUNC4(bp, NIG_REG_MASK_INTERRUPT_PORT0 +
			       port_of_path*4,
			       (NIG_MASK_XGXS0_LINK_STATUS |
				NIG_MASK_XGXS0_LINK10G |
				NIG_MASK_SERDES0_LINK_STATUS |
				NIG_MASK_MI_INT));

		/* Need to take the phy out of low power mode in order
		 * to write to access its registers
		 */
		FUNC9(bp, MISC_REGISTERS_GPIO_2,
			       MISC_REGISTERS_GPIO_OUTPUT_HIGH,
			       port);

		/* Reset the phy */
		FUNC6(bp, &phy[port],
				 MDIO_PMA_DEVAD,
				 MDIO_PMA_REG_CTRL,
				 1<<15);
	}

	/* Add delay of 150ms after reset */
	FUNC10(150);

	if (phy[PORT_0].addr & 0x1) {
		phy_blk[PORT_0] = &(phy[PORT_1]);
		phy_blk[PORT_1] = &(phy[PORT_0]);
	} else {
		phy_blk[PORT_0] = &(phy[PORT_0]);
		phy_blk[PORT_1] = &(phy[PORT_1]);
	}

	/* PART2 - Download firmware to both phys */
	for (port = PORT_MAX - 1; port >= PORT_0; port--) {
		if (FUNC0(bp))
			port_of_path = port;
		else
			port_of_path = 0;

		FUNC1(NETIF_MSG_LINK, "Loading spirom for phy address 0x%x\n",
			   phy_blk[port]->addr);
		if (FUNC3(bp, phy_blk[port],
						      port_of_path))
			return -EINVAL;

		/* Only set bit 10 = 1 (Tx power down) */
		FUNC5(bp, phy_blk[port],
				MDIO_PMA_DEVAD,
				MDIO_PMA_REG_TX_POWER_DOWN, &val);

		/* Phase1 of TX_POWER_DOWN reset */
		FUNC6(bp, phy_blk[port],
				 MDIO_PMA_DEVAD,
				 MDIO_PMA_REG_TX_POWER_DOWN,
				 (val | 1<<10));
	}

	/* Toggle Transmitter: Power down and then up with 600ms delay
	 * between
	 */
	FUNC10(600);

	/* PART3 - complete TX_POWER_DOWN process, and set GPIO2 back to low */
	for (port = PORT_MAX - 1; port >= PORT_0; port--) {
		/* Phase2 of POWER_DOWN_RESET */
		/* Release bit 10 (Release Tx power down) */
		FUNC5(bp, phy_blk[port],
				MDIO_PMA_DEVAD,
				MDIO_PMA_REG_TX_POWER_DOWN, &val);

		FUNC6(bp, phy_blk[port],
				MDIO_PMA_DEVAD,
				MDIO_PMA_REG_TX_POWER_DOWN, (val & (~(1<<10))));
		FUNC11(15000, 30000);

		/* Read modify write the SPI-ROM version select register */
		FUNC5(bp, phy_blk[port],
				MDIO_PMA_DEVAD,
				MDIO_PMA_REG_EDC_FFE_MAIN, &val);
		FUNC6(bp, phy_blk[port],
				 MDIO_PMA_DEVAD,
				 MDIO_PMA_REG_EDC_FFE_MAIN, (val | (1<<12)));

		/* set GPIO2 back to LOW */
		FUNC9(bp, MISC_REGISTERS_GPIO_2,
			       MISC_REGISTERS_GPIO_OUTPUT_LOW, port);
	}
	return 0;
}