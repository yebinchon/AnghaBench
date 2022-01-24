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
struct ifreq {int dummy; } ;
struct ax_device {int /*<<< orphan*/  mii_lock; int /*<<< orphan*/  mii; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ifreq*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct ax_device* FUNC5 (struct net_device*) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev, struct ifreq *req, int cmd)
{
	struct ax_device *ax = FUNC5(dev);
	unsigned long flags;
	int rc;

	if (!FUNC2(dev))
		return -EINVAL;

	FUNC3(&ax->mii_lock, flags);
	rc = FUNC0(&ax->mii, FUNC1(req), cmd, NULL);
	FUNC4(&ax->mii_lock, flags);

	return rc;
}