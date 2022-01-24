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

/* Variables and functions */
 int BMCR_ANENABLE ; 
 int BMCR_ANRESTART ; 
 int EINVAL ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int FUNC0 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct net_device *dev)
{
	int tmp;
	int r = -EINVAL;
	/* if autoneg is off, it's an error */
	tmp = FUNC0(dev, MII_BMCR);
	if (tmp & BMCR_ANENABLE) {
		tmp |= (BMCR_ANRESTART);
		FUNC1(dev, MII_BMCR, tmp);
		r = 0;
	}
	return r;
}