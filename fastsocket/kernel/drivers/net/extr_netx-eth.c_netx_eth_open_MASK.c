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
struct netx_eth_priv {int /*<<< orphan*/  mii; scalar_t__ xpec_base; } ;
struct net_device {int* dev_addr; int /*<<< orphan*/  name; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int EAGAIN ; 
 scalar_t__ ETH_MAC_4321 ; 
 scalar_t__ ETH_MAC_65 ; 
 scalar_t__ ETH_MAC_LOCAL_CONFIG ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int LOCAL_CONFIG_CON_HI_IRQ_EN ; 
 int LOCAL_CONFIG_CON_LO_IRQ_EN ; 
 int LOCAL_CONFIG_IND_HI_IRQ_EN ; 
 int LOCAL_CONFIG_IND_LO_IRQ_EN ; 
 int LOCAL_CONFIG_LINK_STATUS_IRQ_EN ; 
 scalar_t__ NETX_XPEC_RAM_START_OFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct netx_eth_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct netx_eth_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  netx_eth_interrupt ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct net_device *ndev)
{
	struct netx_eth_priv *priv = FUNC1(ndev);

	if (FUNC4
	    (ndev->irq, &netx_eth_interrupt, IRQF_SHARED, ndev->name, ndev))
		return -EAGAIN;

	FUNC5(ndev->dev_addr[0] |
	       ndev->dev_addr[1]<<8 |
	       ndev->dev_addr[2]<<16 |
	       ndev->dev_addr[3]<<24,
	       priv->xpec_base + NETX_XPEC_RAM_START_OFS + ETH_MAC_4321);
	FUNC5(ndev->dev_addr[4] |
	       ndev->dev_addr[5]<<8,
	       priv->xpec_base + NETX_XPEC_RAM_START_OFS + ETH_MAC_65);

	FUNC5(LOCAL_CONFIG_LINK_STATUS_IRQ_EN |
		LOCAL_CONFIG_CON_LO_IRQ_EN |
		LOCAL_CONFIG_CON_HI_IRQ_EN |
		LOCAL_CONFIG_IND_LO_IRQ_EN |
		LOCAL_CONFIG_IND_HI_IRQ_EN,
		priv->xpec_base + NETX_XPEC_RAM_START_OFS +
		ETH_MAC_LOCAL_CONFIG);

	FUNC0(&priv->mii, FUNC2(priv), 1);
	FUNC3(ndev);

	return 0;
}