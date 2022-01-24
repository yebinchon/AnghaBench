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
struct plip_local {int dummy; } ;
struct net_local {scalar_t__ connection; int /*<<< orphan*/  pardev; scalar_t__ port_owner; scalar_t__ should_relinquish; int /*<<< orphan*/  lock; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int OK ; 
 scalar_t__ PLIP_CN_CLOSING ; 
 scalar_t__ PLIP_CN_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(struct net_device *dev, struct net_local *nl,
		      struct plip_local *snd, struct plip_local *rcv)
{
	FUNC2(&nl->lock);
	if (nl->connection == PLIP_CN_CLOSING) {
		nl->connection = PLIP_CN_NONE;
		FUNC0 (dev);
	}
	FUNC3(&nl->lock);
	if (nl->should_relinquish) {
		nl->should_relinquish = nl->port_owner = 0;
		FUNC1(nl->pardev);
	}
	return OK;
}