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
struct net_device {long base_addr; } ;
struct mii_ioctl_data {int dummy; } ;
struct ifreq {int dummy; } ;
struct epic_private {int /*<<< orphan*/  lock; int /*<<< orphan*/  mii; } ;

/* Variables and functions */
 scalar_t__ GENCTL ; 
 scalar_t__ NVCTL ; 
 int FUNC0 (int /*<<< orphan*/ *,struct mii_ioctl_data*,int,int /*<<< orphan*/ *) ; 
 struct mii_ioctl_data* FUNC1 (struct ifreq*) ; 
 int FUNC2 (scalar_t__) ; 
 struct epic_private* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct net_device *dev, struct ifreq *rq, int cmd)
{
	struct epic_private *np = FUNC3(dev);
	long ioaddr = dev->base_addr;
	struct mii_ioctl_data *data = FUNC1(rq);
	int rc;

	/* power-up, if interface is down */
	if (! FUNC4(dev)) {
		FUNC5(0x0200, ioaddr + GENCTL);
		FUNC5((FUNC2(ioaddr + NVCTL) & ~0x003C) | 0x4800, ioaddr + NVCTL);
	}

	/* all non-ethtool ioctls (the SIOC[GS]MIIxxx ioctls) */
	FUNC6(&np->lock);
	rc = FUNC0(&np->mii, data, cmd, NULL);
	FUNC7(&np->lock);

	/* power-down, if interface is down */
	if (! FUNC4(dev)) {
		FUNC5(0x0008, ioaddr + GENCTL);
		FUNC5((FUNC2(ioaddr + NVCTL) & ~0x483C) | 0x0000, ioaddr + NVCTL);
	}
	return rc;
}