#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct net_device {struct lbs_private* ml_priv; int /*<<< orphan*/ * netdev_ops; int /*<<< orphan*/  type; int /*<<< orphan*/  dev_addr; } ;
struct lbs_private {struct net_device* rtap_net_dev; TYPE_2__* dev; int /*<<< orphan*/  current_addr; } ;
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARPHRD_IEEE80211_RADIOTAP ; 
 int ENOMEM ; 
 int EPERM ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  LBS_DEB_MAIN ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ether_setup ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  rtap_netdev_ops ; 

__attribute__((used)) static int FUNC7(struct lbs_private *priv)
{
	int ret = 0;
	struct net_device *rtap_dev;

	FUNC3(LBS_DEB_MAIN);
	if (priv->rtap_net_dev) {
		ret = -EPERM;
		goto out;
	}

	rtap_dev = FUNC1(0, "rtap%d", ether_setup);
	if (rtap_dev == NULL) {
		ret = -ENOMEM;
		goto out;
	}

	FUNC5(rtap_dev->dev_addr, priv->current_addr, ETH_ALEN);
	rtap_dev->type = ARPHRD_IEEE80211_RADIOTAP;
	rtap_dev->netdev_ops = &rtap_netdev_ops;
	rtap_dev->ml_priv = priv;
	FUNC0(rtap_dev, priv->dev->dev.parent);

	ret = FUNC6(rtap_dev);
	if (ret) {
		FUNC2(rtap_dev);
		goto out;
	}
	priv->rtap_net_dev = rtap_dev;

out:
	FUNC4(LBS_DEB_MAIN, "ret %d", ret);
	return ret;
}