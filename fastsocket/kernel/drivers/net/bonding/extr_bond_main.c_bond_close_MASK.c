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
struct net_device {int dummy; } ;
struct TYPE_2__ {int mode; scalar_t__ arp_interval; scalar_t__ miimon; scalar_t__ arp_validate; } ;
struct bonding {int kill_timers; int /*<<< orphan*/  mcast_work; int /*<<< orphan*/  alb_work; int /*<<< orphan*/  ad_work; TYPE_1__ params; int /*<<< orphan*/  arp_work; int /*<<< orphan*/  mii_work; int /*<<< orphan*/  lock; scalar_t__ send_unsol_na; scalar_t__ send_grat_arp; } ;

/* Variables and functions */
#define  BOND_MODE_8023AD 130 
#define  BOND_MODE_ALB 129 
#define  BOND_MODE_TLB 128 
 int /*<<< orphan*/  FUNC0 (struct bonding*) ; 
 scalar_t__ FUNC1 (struct bonding*) ; 
 int /*<<< orphan*/  FUNC2 (struct bonding*) ; 
 int /*<<< orphan*/  FUNC3 (struct bonding*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 struct bonding* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct net_device *bond_dev)
{
	struct bonding *bond = FUNC6(bond_dev);

	if (bond->params.mode == BOND_MODE_8023AD) {
		/* Unregister the receive of LACPDUs */
		FUNC3(bond);
	}

	if (bond->params.arp_interval && bond->params.arp_validate)
		FUNC2(bond);

	FUNC7(&bond->lock);

	bond->send_grat_arp = 0;
	bond->send_unsol_na = 0;

	/* signal timers not to re-arm */
	bond->kill_timers = 1;

	FUNC8(&bond->lock);

	if (bond->params.miimon) {  /* link check interval, in milliseconds. */
		FUNC4(&bond->mii_work);
	}

	if (bond->params.arp_interval) {  /* arp interval, in milliseconds. */
		FUNC4(&bond->arp_work);
	}

	switch (bond->params.mode) {
	case BOND_MODE_8023AD:
		FUNC4(&bond->ad_work);
		break;
	case BOND_MODE_TLB:
	case BOND_MODE_ALB:
		FUNC4(&bond->alb_work);
		break;
	default:
		break;
	}

	if (FUNC5(&bond->mcast_work))
		FUNC4(&bond->mcast_work);

	if (FUNC1(bond)) {
		/* Must be called only after all
		 * slaves have been released
		 */
		FUNC0(bond);
	}

	return 0;
}