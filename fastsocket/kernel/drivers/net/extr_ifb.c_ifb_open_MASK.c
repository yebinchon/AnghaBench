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
struct net_device {int dummy; } ;
struct ifb_private {int /*<<< orphan*/  tq; int /*<<< orphan*/  rq; int /*<<< orphan*/  ifb_tasklet; } ;

/* Variables and functions */
 struct ifb_private* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  ri_tasklet ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev)
{
	struct ifb_private *dp = FUNC0(dev);

	FUNC3(&dp->ifb_tasklet, ri_tasklet, (unsigned long)dev);
	FUNC2(&dp->rq);
	FUNC2(&dp->tq);
	FUNC1(dev);

	return 0;
}