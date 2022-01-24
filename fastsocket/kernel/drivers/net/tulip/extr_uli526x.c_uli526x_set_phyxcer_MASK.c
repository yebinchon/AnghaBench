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
typedef  int u16 ;
struct uli526x_board_info {int media_mode; int PHY_reg4; int /*<<< orphan*/  chip_id; int /*<<< orphan*/  phy_addr; int /*<<< orphan*/  ioaddr; } ;

/* Variables and functions */
#define  ULI526X_100MFD 131 
#define  ULI526X_100MHF 130 
#define  ULI526X_10MFD 129 
#define  ULI526X_10MHF 128 
 int ULI526X_AUTO ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct uli526x_board_info *db)
{
	u16 phy_reg;

	/* Phyxcer capability setting */
	phy_reg = FUNC0(db->ioaddr, db->phy_addr, 4, db->chip_id) & ~0x01e0;

	if (db->media_mode & ULI526X_AUTO) {
		/* AUTO Mode */
		phy_reg |= db->PHY_reg4;
	} else {
		/* Force Mode */
		switch(db->media_mode) {
		case ULI526X_10MHF: phy_reg |= 0x20; break;
		case ULI526X_10MFD: phy_reg |= 0x40; break;
		case ULI526X_100MHF: phy_reg |= 0x80; break;
		case ULI526X_100MFD: phy_reg |= 0x100; break;
		}

	}

  	/* Write new capability to Phyxcer Reg4 */
	if ( !(phy_reg & 0x01e0)) {
		phy_reg|=db->PHY_reg4;
		db->media_mode|=ULI526X_AUTO;
	}
	FUNC1(db->ioaddr, db->phy_addr, 4, phy_reg, db->chip_id);

 	/* Restart Auto-Negotiation */
	FUNC1(db->ioaddr, db->phy_addr, 0, 0x1200, db->chip_id);
	FUNC2(50);
}