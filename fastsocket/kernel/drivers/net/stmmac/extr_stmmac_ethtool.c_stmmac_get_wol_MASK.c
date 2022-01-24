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
struct stmmac_priv {scalar_t__ wolenabled; int /*<<< orphan*/  lock; int /*<<< orphan*/  wolopts; } ;
struct net_device {int dummy; } ;
struct ethtool_wolinfo {int /*<<< orphan*/  wolopts; int /*<<< orphan*/  supported; } ;

/* Variables and functions */
 scalar_t__ PMT_SUPPORTED ; 
 int /*<<< orphan*/  WAKE_MAGIC ; 
 struct stmmac_priv* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct net_device *dev, struct ethtool_wolinfo *wol)
{
	struct stmmac_priv *priv = FUNC0(dev);

	FUNC1(&priv->lock);
	if (priv->wolenabled == PMT_SUPPORTED) {
		wol->supported = WAKE_MAGIC;
		wol->wolopts = priv->wolopts;
	}
	FUNC2(&priv->lock);
}