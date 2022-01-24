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
struct net_device {int dummy; } ;
struct gfar_private {int device_flags; int rxcoalescing; int txcoalescing; void* txic; TYPE_1__* regs; void* rxic; int /*<<< orphan*/ * phydev; } ;
struct ethtool_coalesce {scalar_t__ rx_coalesce_usecs; scalar_t__ rx_max_coalesced_frames; scalar_t__ tx_coalesce_usecs; scalar_t__ tx_max_coalesced_frames; } ;
struct TYPE_2__ {int /*<<< orphan*/  txic; int /*<<< orphan*/  rxic; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int EOPNOTSUPP ; 
 int FSL_GIANFAR_DEV_HAS_COALESCE ; 
 scalar_t__ GFAR_MAX_COAL_FRAMES ; 
 scalar_t__ GFAR_MAX_COAL_USECS ; 
 int /*<<< orphan*/  FUNC0 (struct gfar_private*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void*) ; 
 void* FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct gfar_private* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev, struct ethtool_coalesce *cvals)
{
	struct gfar_private *priv = FUNC3(dev);

	if (!(priv->device_flags & FSL_GIANFAR_DEV_HAS_COALESCE))
		return -EOPNOTSUPP;

	/* Set up rx coalescing */
	if ((cvals->rx_coalesce_usecs == 0) ||
	    (cvals->rx_max_coalesced_frames == 0))
		priv->rxcoalescing = 0;
	else
		priv->rxcoalescing = 1;

	if (NULL == priv->phydev)
		return -ENODEV;

	/* Check the bounds of the values */
	if (cvals->rx_coalesce_usecs > GFAR_MAX_COAL_USECS) {
		FUNC4("Coalescing is limited to %d microseconds\n",
				GFAR_MAX_COAL_USECS);
		return -EINVAL;
	}

	if (cvals->rx_max_coalesced_frames > GFAR_MAX_COAL_FRAMES) {
		FUNC4("Coalescing is limited to %d frames\n",
				GFAR_MAX_COAL_FRAMES);
		return -EINVAL;
	}

	priv->rxic = FUNC2(cvals->rx_max_coalesced_frames,
		FUNC0(priv, cvals->rx_coalesce_usecs));

	/* Set up tx coalescing */
	if ((cvals->tx_coalesce_usecs == 0) ||
	    (cvals->tx_max_coalesced_frames == 0))
		priv->txcoalescing = 0;
	else
		priv->txcoalescing = 1;

	/* Check the bounds of the values */
	if (cvals->tx_coalesce_usecs > GFAR_MAX_COAL_USECS) {
		FUNC4("Coalescing is limited to %d microseconds\n",
				GFAR_MAX_COAL_USECS);
		return -EINVAL;
	}

	if (cvals->tx_max_coalesced_frames > GFAR_MAX_COAL_FRAMES) {
		FUNC4("Coalescing is limited to %d frames\n",
				GFAR_MAX_COAL_FRAMES);
		return -EINVAL;
	}

	priv->txic = FUNC2(cvals->tx_max_coalesced_frames,
		FUNC0(priv, cvals->tx_coalesce_usecs));

	FUNC1(&priv->regs->rxic, 0);
	if (priv->rxcoalescing)
		FUNC1(&priv->regs->rxic, priv->rxic);

	FUNC1(&priv->regs->txic, 0);
	if (priv->txcoalescing)
		FUNC1(&priv->regs->txic, priv->txic);

	return 0;
}