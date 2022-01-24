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
struct mii_bus {struct mdiobb_ctrl* priv; } ;
struct mdiobb_ctrl {TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* set_mdio_dir ) (struct mdiobb_ctrl*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  MDIO_READ ; 
 int /*<<< orphan*/  FUNC0 (struct mdiobb_ctrl*,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC1 (struct mdiobb_ctrl*) ; 
 int FUNC2 (struct mdiobb_ctrl*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mdiobb_ctrl*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct mii_bus *bus, int phy, int reg)
{
	struct mdiobb_ctrl *ctrl = bus->priv;
	int ret, i;

	FUNC0(ctrl, MDIO_READ, phy, reg);
	ctrl->ops->set_mdio_dir(ctrl, 0);

	/* check the turnaround bit: the PHY should be driving it to zero */
	if (FUNC1(ctrl) != 0) {
		/* PHY didn't drive TA low -- flush any bits it
		 * may be trying to send.
		 */
		for (i = 0; i < 32; i++)
			FUNC1(ctrl);

		return 0xffff;
	}

	ret = FUNC2(ctrl, 16);
	FUNC1(ctrl);
	return ret;
}