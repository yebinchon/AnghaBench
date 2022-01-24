#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ loopback_mode; } ;
struct niu {size_t port; int /*<<< orphan*/  lock; TYPE_2__* parent; TYPE_3__ link_config; } ;
struct TYPE_4__ {int** phy_id; } ;
struct TYPE_5__ {TYPE_1__ phy_probe_info; int /*<<< orphan*/  port_phy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ LOOPBACK_DISABLED ; 
 int NIU_PHY_ID_MASK ; 
#define  NIU_PHY_ID_MRVL88X2011 128 
 int FUNC0 (struct niu*,int*) ; 
 int FUNC1 (struct niu*,int*) ; 
 int FUNC2 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct niu *np, int *link_up_p)
{
	unsigned long flags;
	int err = -EINVAL;

	FUNC3(&np->lock, flags);

	if (np->link_config.loopback_mode == LOOPBACK_DISABLED) {
		int phy_id;

		phy_id = FUNC2(np->parent->port_phy, np->port);
		phy_id = np->parent->phy_probe_info.phy_id[phy_id][np->port];

		/* handle different phy types */
		switch (phy_id & NIU_PHY_ID_MASK) {
		case NIU_PHY_ID_MRVL88X2011:
			err = FUNC1(np, link_up_p);
			break;

		default: /* bcom 8704 */
			err = FUNC0(np, link_up_p);
			break;
		}
	}

	FUNC4(&np->lock, flags);

	return err;
}