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
struct TYPE_2__ {scalar_t__ mode; scalar_t__ arp_validate; scalar_t__ arp_interval; scalar_t__ miimon; } ;
struct bonding {int /*<<< orphan*/  ad_work; int /*<<< orphan*/  wq; TYPE_1__ params; int /*<<< orphan*/  arp_work; int /*<<< orphan*/  mii_work; int /*<<< orphan*/  alb_work; int /*<<< orphan*/  mcast_work; scalar_t__ kill_timers; } ;

/* Variables and functions */
 scalar_t__ BOND_MODE_8023AD ; 
 scalar_t__ BOND_MODE_ACTIVEBACKUP ; 
 scalar_t__ BOND_MODE_ALB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bonding*,int) ; 
 int /*<<< orphan*/  bond_3ad_state_machine_handler ; 
 int /*<<< orphan*/  bond_activebackup_arp_mon ; 
 scalar_t__ FUNC2 (struct bonding*,int) ; 
 int /*<<< orphan*/  bond_alb_monitor ; 
 scalar_t__ FUNC3 (struct bonding*) ; 
 int /*<<< orphan*/  bond_loadbalance_arp_mon ; 
 int /*<<< orphan*/  bond_mii_monitor ; 
 int /*<<< orphan*/  FUNC4 (struct bonding*) ; 
 int /*<<< orphan*/  FUNC5 (struct bonding*) ; 
 int /*<<< orphan*/  bond_resend_igmp_join_requests_delayed ; 
 struct bonding* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct net_device *bond_dev)
{
	struct bonding *bond = FUNC6(bond_dev);

	bond->kill_timers = 0;

	FUNC0(&bond->mcast_work, bond_resend_igmp_join_requests_delayed);

	if (FUNC3(bond)) {
		/* bond_alb_initialize must be called before the timer
		 * is started.
		 */
		if (FUNC2(bond, (bond->params.mode == BOND_MODE_ALB))) {
			/* something went wrong - fail the open operation */
			return -1;
		}

		FUNC0(&bond->alb_work, bond_alb_monitor);
		FUNC7(bond->wq, &bond->alb_work, 0);
	}

	if (bond->params.miimon) {  /* link check interval, in milliseconds. */
		FUNC0(&bond->mii_work, bond_mii_monitor);
		FUNC7(bond->wq, &bond->mii_work, 0);
	}

	if (bond->params.arp_interval) {  /* arp interval, in milliseconds. */
		if (bond->params.mode == BOND_MODE_ACTIVEBACKUP)
			FUNC0(&bond->arp_work,
					  bond_activebackup_arp_mon);
		else
			FUNC0(&bond->arp_work,
					  bond_loadbalance_arp_mon);

		FUNC7(bond->wq, &bond->arp_work, 0);
		if (bond->params.arp_validate)
			FUNC4(bond);
	}

	if (bond->params.mode == BOND_MODE_8023AD) {
		FUNC0(&bond->ad_work, bond_3ad_state_machine_handler);
		FUNC7(bond->wq, &bond->ad_work, 0);
		/* register to receive LACPDUs */
		FUNC5(bond);
		FUNC1(bond, 1);
	}

	return 0;
}