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
struct net_device {int features; int /*<<< orphan*/  mtu; int /*<<< orphan*/  dev_addr; } ;
struct TYPE_3__ {int /*<<< orphan*/  send_flags; } ;
struct ipoib_dev_priv {int hca_caps; int /*<<< orphan*/  mcast_mtu; TYPE_2__* dev; int /*<<< orphan*/  flags; TYPE_1__ tx_wr; } ;
struct TYPE_4__ {int /*<<< orphan*/  features; } ;

/* Variables and functions */
 int EINVAL ; 
 int IB_DEVICE_UD_TSO ; 
 int /*<<< orphan*/  IB_SEND_IP_CSUM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IPOIB_FLAG_ADMIN_CM ; 
 int /*<<< orphan*/  IPOIB_FLAG_CSUM ; 
 int /*<<< orphan*/  NETIF_F_GRO ; 
 int NETIF_F_IP_CSUM ; 
 int NETIF_F_SG ; 
 int NETIF_F_TSO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct ipoib_dev_priv*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ipoib_dev_priv* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char const*,char*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC12(struct net_device *dev, const char *buf)
{
	struct ipoib_dev_priv *priv = FUNC6(dev);

	/* flush paths if we switch modes so that connections are restarted */
	if (FUNC0(dev->dev_addr) && !FUNC10(buf, "connected\n")) {
		FUNC9(IPOIB_FLAG_ADMIN_CM, &priv->flags);
		FUNC4(priv, "enabling connected mode "
			   "will cause multicast packet drops\n");

		dev->features &= ~(NETIF_F_IP_CSUM | NETIF_F_SG | NETIF_F_TSO);
		FUNC8();
		priv->tx_wr.send_flags &= ~IB_SEND_IP_CSUM;

		FUNC3(dev);
		FUNC7();
		return 0;
	}

	if (!FUNC10(buf, "datagram\n")) {
		FUNC1(IPOIB_FLAG_ADMIN_CM, &priv->flags);

		if (FUNC11(IPOIB_FLAG_CSUM, &priv->flags)) {
			dev->features |= NETIF_F_IP_CSUM | NETIF_F_SG;
			priv->dev->features |= NETIF_F_GRO;
			if (priv->hca_caps & IB_DEVICE_UD_TSO)
				dev->features |= NETIF_F_TSO;
		}
		FUNC2(dev, FUNC5(priv->mcast_mtu, dev->mtu));
		FUNC8();
		FUNC3(dev);
		FUNC7();
		return 0;
	}

	return -EINVAL;
}