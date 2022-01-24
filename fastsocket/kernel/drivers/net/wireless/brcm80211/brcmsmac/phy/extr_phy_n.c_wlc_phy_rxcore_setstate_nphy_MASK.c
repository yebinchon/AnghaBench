#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint ;
typedef  int u8 ;
typedef  int u16 ;
struct brcms_phy_pub {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  phy_rev; } ;
struct brcms_phy {int rx2tx_biasentry; TYPE_2__* sh; scalar_t__ phyhang_avoid; TYPE_1__ pubpi; int /*<<< orphan*/  d11core; } ;
struct TYPE_4__ {int phyrxchain; int /*<<< orphan*/  physhim; int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 size_t FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int MCTL_EN_MAC ; 
 int NPHY_REV3_RFSEQ_CMD_CLR_RXRX_BIAS ; 
 int NPHY_REV3_RFSEQ_CMD_END ; 
 int NPHY_REV3_RFSEQ_CMD_NOP ; 
 int /*<<< orphan*/  NPHY_RFSEQ_RESET2RX ; 
 int /*<<< orphan*/  NPHY_TBL_ID_RFSEQ ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  maccontrol ; 
 int FUNC4 (struct brcms_phy*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct brcms_phy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct brcms_phy*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct brcms_phy*,int /*<<< orphan*/ ,size_t,int,int,int*) ; 
 int /*<<< orphan*/  FUNC10 (struct brcms_phy*,int /*<<< orphan*/ ,int,size_t,int,int*) ; 
 int /*<<< orphan*/  FUNC11 (struct brcms_phy*,int,int) ; 

void FUNC12(struct brcms_phy_pub *pih, u8 rxcore_bitmask)
{
	u16 regval;
	u16 tbl_buf[16];
	uint i;
	struct brcms_phy *pi = (struct brcms_phy *) pih;
	u16 tbl_opcode;
	bool suspend;

	pi->sh->phyrxchain = rxcore_bitmask;

	if (!pi->sh->clk)
		return;

	suspend = (0 == (FUNC3(pi->d11core, FUNC1(maccontrol)) &
			 MCTL_EN_MAC));
	if (!suspend)
		FUNC6(pi->sh->physhim);

	if (pi->phyhang_avoid)
		FUNC8(pi, true);

	regval = FUNC4(pi, 0xa2);
	regval &= ~(0xf << 4);
	regval |= ((u16) (rxcore_bitmask & 0x3)) << 4;
	FUNC11(pi, 0xa2, regval);

	if ((rxcore_bitmask & 0x3) != 0x3) {

		FUNC11(pi, 0x20e, 1);

		if (FUNC2(pi->pubpi.phy_rev, 3)) {
			if (pi->rx2tx_biasentry == -1) {
				FUNC9(pi, NPHY_TBL_ID_RFSEQ,
							FUNC0(tbl_buf), 80,
							16, tbl_buf);

				for (i = 0; i < FUNC0(tbl_buf); i++) {
					if (tbl_buf[i] ==
					    NPHY_REV3_RFSEQ_CMD_CLR_RXRX_BIAS) {
						pi->rx2tx_biasentry = (u8) i;
						tbl_opcode =
							NPHY_REV3_RFSEQ_CMD_NOP;
						FUNC10(
							pi,
							NPHY_TBL_ID_RFSEQ,
							1, i,
							16,
							&tbl_opcode);
						break;
					} else if (tbl_buf[i] ==
						   NPHY_REV3_RFSEQ_CMD_END)
						break;
				}
			}
		}
	} else {

		FUNC11(pi, 0x20e, 30);

		if (FUNC2(pi->pubpi.phy_rev, 3)) {
			if (pi->rx2tx_biasentry != -1) {
				tbl_opcode = NPHY_REV3_RFSEQ_CMD_CLR_RXRX_BIAS;
				FUNC10(pi, NPHY_TBL_ID_RFSEQ,
							 1, pi->rx2tx_biasentry,
							 16, &tbl_opcode);
				pi->rx2tx_biasentry = -1;
			}
		}
	}

	FUNC7(pi, NPHY_RFSEQ_RESET2RX);

	if (pi->phyhang_avoid)
		FUNC8(pi, false);

	if (!suspend)
		FUNC5(pi->sh->physhim);
}