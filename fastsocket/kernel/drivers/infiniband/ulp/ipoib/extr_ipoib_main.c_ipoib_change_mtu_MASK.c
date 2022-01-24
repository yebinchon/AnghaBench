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
struct net_device {int mtu; } ;
struct ipoib_dev_priv {int mcast_mtu; int admin_mtu; int /*<<< orphan*/  max_ib_mtu; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 int FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct ipoib_dev_priv*,char*,int) ; 
 int FUNC4 (int,int) ; 
 struct ipoib_dev_priv* FUNC5 (struct net_device*) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev, int new_mtu)
{
	struct ipoib_dev_priv *priv = FUNC5(dev);

	/* dev->mtu > 2K ==> connected mode */
	if (FUNC1(dev)) {
		if (new_mtu > FUNC2(dev))
			return -EINVAL;

		if (new_mtu > priv->mcast_mtu)
			FUNC3(priv, "mtu > %d will cause multicast packet drops.\n",
				   priv->mcast_mtu);

		dev->mtu = new_mtu;
		return 0;
	}

	if (new_mtu > FUNC0(priv->max_ib_mtu))
		return -EINVAL;

	priv->admin_mtu = new_mtu;

	dev->mtu = FUNC4(priv->mcast_mtu, priv->admin_mtu);

	return 0;
}