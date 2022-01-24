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
struct ioc3_private {int /*<<< orphan*/  ioc3_lock; int /*<<< orphan*/  mii; } ;
struct ifreq {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ifreq*) ; 
 struct ioc3_private* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev, struct ifreq *rq, int cmd)
{
	struct ioc3_private *ip = FUNC2(dev);
	int rc;

	FUNC3(&ip->ioc3_lock);
	rc = FUNC0(&ip->mii, FUNC1(rq), cmd, NULL);
	FUNC4(&ip->ioc3_lock);

	return rc;
}