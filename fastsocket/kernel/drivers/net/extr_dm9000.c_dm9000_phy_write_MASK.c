#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  addr_lock; int /*<<< orphan*/  lock; int /*<<< orphan*/  io_addr; } ;
typedef  TYPE_1__ board_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  DM9000_EPAR ; 
 int /*<<< orphan*/  DM9000_EPCR ; 
 int /*<<< orphan*/  DM9000_EPDRH ; 
 int /*<<< orphan*/  DM9000_EPDRL ; 
 int DM9000_PHY ; 
 int EPCR_EPOS ; 
 int EPCR_ERPRW ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (struct net_device*) ; 
 unsigned long FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(struct net_device *dev,
		 int phyaddr_unused, int reg, int value)
{
	board_info_t *db = FUNC5(dev);
	unsigned long flags;
	unsigned long reg_save;

	FUNC0(db, 5, "phy_write[%02x] = %04x\n", reg, value);
	FUNC3(&db->addr_lock);

	FUNC7(&db->lock,flags);

	/* Save previous register address */
	reg_save = FUNC6(db->io_addr);

	/* Fill the phyxcer register into REG_0C */
	FUNC2(db, DM9000_EPAR, DM9000_PHY | reg);

	/* Fill the written data into REG_0D & REG_0E */
	FUNC2(db, DM9000_EPDRL, value);
	FUNC2(db, DM9000_EPDRH, value >> 8);

	FUNC2(db, DM9000_EPCR, EPCR_EPOS | EPCR_ERPRW);	/* Issue phyxcer write command */

	FUNC9(reg_save, db->io_addr);
	FUNC8(&db->lock, flags);

	FUNC1(db, 1);		/* Wait write complete */

	FUNC7(&db->lock,flags);
	reg_save = FUNC6(db->io_addr);

	FUNC2(db, DM9000_EPCR, 0x0);	/* Clear phyxcer write command */

	/* restore the previous address */
	FUNC9(reg_save, db->io_addr);

	FUNC8(&db->lock, flags);
	FUNC4(&db->addr_lock);
}