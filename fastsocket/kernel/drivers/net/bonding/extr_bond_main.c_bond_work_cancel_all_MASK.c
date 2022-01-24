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
struct TYPE_2__ {scalar_t__ mode; scalar_t__ arp_interval; scalar_t__ miimon; } ;
struct bonding {int kill_timers; int /*<<< orphan*/  mcast_work; int /*<<< orphan*/  ad_work; TYPE_1__ params; int /*<<< orphan*/  alb_work; int /*<<< orphan*/  arp_work; int /*<<< orphan*/  mii_work; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 scalar_t__ BOND_MODE_8023AD ; 
 scalar_t__ BOND_MODE_ALB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct bonding *bond)
{
	FUNC2(&bond->lock);
	bond->kill_timers = 1;
	FUNC3(&bond->lock);

	if (bond->params.miimon && FUNC1(&bond->mii_work))
		FUNC0(&bond->mii_work);

	if (bond->params.arp_interval && FUNC1(&bond->arp_work))
		FUNC0(&bond->arp_work);

	if (bond->params.mode == BOND_MODE_ALB &&
	    FUNC1(&bond->alb_work))
		FUNC0(&bond->alb_work);

	if (bond->params.mode == BOND_MODE_8023AD &&
	    FUNC1(&bond->ad_work))
		FUNC0(&bond->ad_work);

	if (FUNC1(&bond->mcast_work))
		FUNC0(&bond->mcast_work);
}