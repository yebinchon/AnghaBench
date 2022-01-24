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
struct netx_eth_priv {scalar_t__ xpec_base; } ;
struct net_device {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 scalar_t__ ETH_MAC_LOCAL_CONFIG ; 
 scalar_t__ NETX_XPEC_RAM_START_OFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct net_device*) ; 
 struct netx_eth_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct net_device *ndev)
{
	struct netx_eth_priv *priv = FUNC1(ndev);

	FUNC2(ndev);

	FUNC3(0,
	    priv->xpec_base + NETX_XPEC_RAM_START_OFS + ETH_MAC_LOCAL_CONFIG);

	FUNC0(ndev->irq, ndev);

	return 0;
}