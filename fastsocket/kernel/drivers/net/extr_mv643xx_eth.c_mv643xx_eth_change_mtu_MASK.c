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
struct net_device {int mtu; int /*<<< orphan*/  dev; } ;
struct mv643xx_eth_private {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct mv643xx_eth_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 struct mv643xx_eth_private* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct mv643xx_eth_private*,int,int) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev, int new_mtu)
{
	struct mv643xx_eth_private *mp = FUNC4(dev);

	if (new_mtu < 64 || new_mtu > 9500)
		return -EINVAL;

	dev->mtu = new_mtu;
	FUNC2(mp);
	FUNC6(mp, 1000000000, 16777216);

	if (!FUNC5(dev))
		return 0;

	/*
	 * Stop and then re-open the interface. This will allocate RX
	 * skbs of the new MTU.
	 * There is a possible danger that the open will not succeed,
	 * due to memory being full.
	 */
	FUNC3(dev);
	if (FUNC1(dev)) {
		FUNC0(KERN_ERR, &dev->dev,
			   "fatal error on re-opening device after "
			   "MTU change\n");
	}

	return 0;
}