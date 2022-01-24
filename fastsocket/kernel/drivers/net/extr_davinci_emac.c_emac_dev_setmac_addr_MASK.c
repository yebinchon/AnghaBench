#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sockaddr {int /*<<< orphan*/  sa_data; } ;
struct net_device {int /*<<< orphan*/  addr_len; int /*<<< orphan*/  dev_addr; } ;
struct emac_rxch {int /*<<< orphan*/  mac_addr; } ;
struct emac_priv {int /*<<< orphan*/  mac_addr; TYPE_1__* ndev; struct emac_rxch** rxch; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t EMAC_DEF_RX_CH ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct emac_priv*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct emac_priv* FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (struct emac_priv*) ; 
 scalar_t__ FUNC6 (struct net_device*) ; 

__attribute__((used)) static int FUNC7(struct net_device *ndev, void *addr)
{
	struct emac_priv *priv = FUNC4(ndev);
	struct emac_rxch *rxch = priv->rxch[EMAC_DEF_RX_CH];
	struct device *emac_dev = &priv->ndev->dev;
	struct sockaddr *sa = addr;

	if (!FUNC2(sa->sa_data))
		return -EINVAL;

	/* Store mac addr in priv and rx channel and set it in EMAC hw */
	FUNC3(priv->mac_addr, sa->sa_data, ndev->addr_len);
	FUNC3(ndev->dev_addr, sa->sa_data, ndev->addr_len);

	/* If the interface is down - rxch is NULL. */
	/* MAC address is configured only after the interface is enabled. */
	if (FUNC6(ndev)) {
		FUNC3(rxch->mac_addr, sa->sa_data, ndev->addr_len);
		FUNC1(priv, EMAC_DEF_RX_CH, rxch->mac_addr);
	}

	if (FUNC5(priv))
		FUNC0(emac_dev, "DaVinci EMAC: emac_dev_setmac_addr %pM\n",
					priv->mac_addr);

	return 0;
}