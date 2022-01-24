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
struct cpmac_priv {int /*<<< orphan*/  phy; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int SIOCGMIIPHY ; 
 int SIOCGMIIREG ; 
 int SIOCSMIIREG ; 
 int /*<<< orphan*/  FUNC0 (struct ifreq*) ; 
 struct cpmac_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev, struct ifreq *ifr, int cmd)
{
	struct cpmac_priv *priv = FUNC1(dev);
	if (!(FUNC2(dev)))
		return -EINVAL;
	if (!priv->phy)
		return -EINVAL;
	if ((cmd == SIOCGMIIPHY) || (cmd == SIOCGMIIREG) ||
	    (cmd == SIOCSMIIREG))
		return FUNC3(priv->phy, FUNC0(ifr), cmd);

	return -EOPNOTSUPP;
}