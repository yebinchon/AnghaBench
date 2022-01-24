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
struct mv643xx_eth_private {int /*<<< orphan*/ * phy; } ;
struct ifreq {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct ifreq*) ; 
 struct mv643xx_eth_private* FUNC1 (struct net_device*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev, struct ifreq *ifr, int cmd)
{
	struct mv643xx_eth_private *mp = FUNC1(dev);

	if (mp->phy != NULL)
		return FUNC2(mp->phy, FUNC0(ifr), cmd);

	return -EOPNOTSUPP;
}