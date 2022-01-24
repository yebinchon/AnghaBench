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
struct slave {TYPE_2__* dev; int /*<<< orphan*/  state; } ;
struct TYPE_3__ {int /*<<< orphan*/  all_slaves_active; } ;
struct bonding {TYPE_1__ params; } ;
struct TYPE_4__ {int /*<<< orphan*/  priv_flags; int /*<<< orphan*/  master; } ;

/* Variables and functions */
 int /*<<< orphan*/  BOND_STATE_BACKUP ; 
 int /*<<< orphan*/  IFF_SLAVE_INACTIVE ; 
 int /*<<< orphan*/  IFF_SLAVE_NEEDARP ; 
 int /*<<< orphan*/  FUNC0 (struct bonding*) ; 
 struct bonding* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct bonding*,struct slave*) ; 

__attribute__((used)) static inline void FUNC3(struct slave *slave)
{
	struct bonding *bond = FUNC1(slave->dev->master);
	if (!FUNC0(bond))
		slave->state = BOND_STATE_BACKUP;
	if (!bond->params.all_slaves_active)
		slave->dev->priv_flags |= IFF_SLAVE_INACTIVE;
	if (FUNC2(bond, slave))
		slave->dev->priv_flags |= IFF_SLAVE_NEEDARP;
}