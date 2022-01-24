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
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct bnx2x_phy {int flags; int addr; scalar_t__ mdio_ctrl; } ;
struct bnx2x {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int EFAULT ; 
 int EMAC_MDIO_COMM_COMMAND_ADDRESS ; 
 int EMAC_MDIO_COMM_COMMAND_WRITE_45 ; 
 int EMAC_MDIO_COMM_START_BUSY ; 
 int /*<<< orphan*/  EMAC_MDIO_STATUS_10MB ; 
 scalar_t__ EMAC_REG_EMAC_MDIO_COMM ; 
 scalar_t__ EMAC_REG_EMAC_MDIO_STATUS ; 
 int FLAGS_DUMMY_READ ; 
 int FLAGS_MDC_MDIO_WA ; 
 int FLAGS_MDC_MDIO_WA_B0 ; 
 int FLAGS_MDC_MDIO_WA_G ; 
 scalar_t__ MISC_REG_CHIP_NUM ; 
 scalar_t__ MISC_REG_CHIP_REV ; 
 int /*<<< orphan*/  NETIF_MSG_LINK ; 
 int FUNC1 (struct bnx2x*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x*,struct bnx2x_phy*,int,int,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct bnx2x*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct bnx2x *bp, struct bnx2x_phy *phy,
			    u8 devad, u16 reg, u16 val)
{
	u32 tmp;
	u8 i;
	int rc = 0;
	u32 chip_id;
	if (phy->flags & FLAGS_MDC_MDIO_WA_G) {
		chip_id = (FUNC1(bp, MISC_REG_CHIP_NUM) << 16) |
			  ((FUNC1(bp, MISC_REG_CHIP_REV) & 0xf) << 12);
		FUNC6(bp, chip_id, phy->mdio_ctrl);
	}

	if (phy->flags & FLAGS_MDC_MDIO_WA_B0)
		FUNC4(bp, phy->mdio_ctrl + EMAC_REG_EMAC_MDIO_STATUS,
			      EMAC_MDIO_STATUS_10MB);

	/* Address */
	tmp = ((phy->addr << 21) | (devad << 16) | reg |
	       EMAC_MDIO_COMM_COMMAND_ADDRESS |
	       EMAC_MDIO_COMM_START_BUSY);
	FUNC2(bp, phy->mdio_ctrl + EMAC_REG_EMAC_MDIO_COMM, tmp);

	for (i = 0; i < 50; i++) {
		FUNC8(10);

		tmp = FUNC1(bp, phy->mdio_ctrl + EMAC_REG_EMAC_MDIO_COMM);
		if (!(tmp & EMAC_MDIO_COMM_START_BUSY)) {
			FUNC8(5);
			break;
		}
	}
	if (tmp & EMAC_MDIO_COMM_START_BUSY) {
		FUNC0(NETIF_MSG_LINK, "write phy register failed\n");
		FUNC7(bp->dev,  "MDC/MDIO access timeout\n");
		rc = -EFAULT;
	} else {
		/* Data */
		tmp = ((phy->addr << 21) | (devad << 16) | val |
		       EMAC_MDIO_COMM_COMMAND_WRITE_45 |
		       EMAC_MDIO_COMM_START_BUSY);
		FUNC2(bp, phy->mdio_ctrl + EMAC_REG_EMAC_MDIO_COMM, tmp);

		for (i = 0; i < 50; i++) {
			FUNC8(10);

			tmp = FUNC1(bp, phy->mdio_ctrl +
				     EMAC_REG_EMAC_MDIO_COMM);
			if (!(tmp & EMAC_MDIO_COMM_START_BUSY)) {
				FUNC8(5);
				break;
			}
		}
		if (tmp & EMAC_MDIO_COMM_START_BUSY) {
			FUNC0(NETIF_MSG_LINK, "write phy register failed\n");
			FUNC7(bp->dev,  "MDC/MDIO access timeout\n");
			rc = -EFAULT;
		}
	}
	/* Work around for E3 A0 */
	if (phy->flags & FLAGS_MDC_MDIO_WA) {
		phy->flags ^= FLAGS_DUMMY_READ;
		if (phy->flags & FLAGS_DUMMY_READ) {
			u16 temp_val;
			FUNC5(bp, phy, devad, 0xf, &temp_val);
		}
	}
	if (phy->flags & FLAGS_MDC_MDIO_WA_B0)
		FUNC3(bp, phy->mdio_ctrl + EMAC_REG_EMAC_MDIO_STATUS,
			       EMAC_MDIO_STATUS_10MB);
	return rc;
}