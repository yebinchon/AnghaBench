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
typedef  int u32 ;
struct stmmac_priv {scalar_t__ wolenabled; int wolopts; int /*<<< orphan*/  lock; int /*<<< orphan*/  device; } ;
struct net_device {int dummy; } ;
struct ethtool_wolinfo {int wolopts; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ PMT_NOT_SUPPORTED ; 
 int WAKE_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 struct stmmac_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev, struct ethtool_wolinfo *wol)
{
	struct stmmac_priv *priv = FUNC1(dev);
	u32 support = WAKE_MAGIC;

	if (priv->wolenabled == PMT_NOT_SUPPORTED)
		return -EINVAL;

	if (wol->wolopts & ~support)
		return -EINVAL;

	if (wol->wolopts == 0)
		FUNC0(priv->device, 0);
	else
		FUNC0(priv->device, 1);

	FUNC2(&priv->lock);
	priv->wolopts = wol->wolopts;
	FUNC3(&priv->lock);

	return 0;
}