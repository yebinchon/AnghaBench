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
typedef  int /*<<< orphan*/  u16 ;
struct mii_bus {struct mdiobb_ctrl* priv; } ;
struct mdiobb_ctrl {TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* set_mdio_dir ) (struct mdiobb_ctrl*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  MDIO_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct mdiobb_ctrl*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mdiobb_ctrl*) ; 
 int /*<<< orphan*/  FUNC2 (struct mdiobb_ctrl*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mdiobb_ctrl*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mdiobb_ctrl*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct mii_bus *bus, int phy, int reg, u16 val)
{
	struct mdiobb_ctrl *ctrl = bus->priv;

	FUNC0(ctrl, MDIO_WRITE, phy, reg);

	/* send the turnaround (10) */
	FUNC2(ctrl, 1);
	FUNC2(ctrl, 0);

	FUNC3(ctrl, val, 16);

	ctrl->ops->set_mdio_dir(ctrl, 0);
	FUNC1(ctrl);
	return 0;
}