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
struct sh_eth_private {struct phy_device* phydev; } ;
struct phy_device {int dummy; } ;
struct net_device {int dummy; } ;
struct ifreq {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct ifreq*) ; 
 struct sh_eth_private* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int FUNC3 (struct phy_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct net_device *ndev, struct ifreq *rq,
				int cmd)
{
	struct sh_eth_private *mdp = FUNC1(ndev);
	struct phy_device *phydev = mdp->phydev;

	if (!FUNC2(ndev))
		return -EINVAL;

	if (!phydev)
		return -ENODEV;

	return FUNC3(phydev, FUNC0(rq), cmd);
}