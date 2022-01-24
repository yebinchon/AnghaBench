#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  addr_lock; int /*<<< orphan*/  lock; int /*<<< orphan*/  io_addr; } ;
typedef  TYPE_1__ board_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  DM9000_EPAR ; 
 int /*<<< orphan*/  DM9000_EPCR ; 
 int /*<<< orphan*/  DM9000_EPDRH ; 
 int /*<<< orphan*/  DM9000_EPDRL ; 
 int DM9000_PHY ; 
 int EPCR_EPOS ; 
 int EPCR_ERPRR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (struct net_device*) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(struct net_device *dev, int phy_reg_unused, int reg)
{
	board_info_t *db = FUNC6(dev);
	unsigned long flags;
	unsigned int reg_save;
	int ret;

	FUNC4(&db->addr_lock);

	FUNC8(&db->lock,flags);

	/* Save previous register address */
	reg_save = FUNC7(db->io_addr);

	/* Fill the phyxcer register into REG_0C */
	FUNC3(db, DM9000_EPAR, DM9000_PHY | reg);

	FUNC3(db, DM9000_EPCR, EPCR_ERPRR | EPCR_EPOS);	/* Issue phyxcer read command */

	FUNC10(reg_save, db->io_addr);
	FUNC9(&db->lock,flags);

	FUNC1(db, 1);		/* Wait read complete */

	FUNC8(&db->lock,flags);
	reg_save = FUNC7(db->io_addr);

	FUNC3(db, DM9000_EPCR, 0x0);	/* Clear phyxcer read command */

	/* The read data keeps on REG_0D & REG_0E */
	ret = (FUNC2(db, DM9000_EPDRH) << 8) | FUNC2(db, DM9000_EPDRL);

	/* restore the previous address */
	FUNC10(reg_save, db->io_addr);
	FUNC9(&db->lock,flags);

	FUNC5(&db->addr_lock);

	FUNC0(db, 5, "phy_read[%02x] -> %04x\n", reg, ret);
	return ret;
}