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
struct net_device {int flags; int /*<<< orphan*/  name; } ;
struct gfar_private {scalar_t__ rx_ring_size; scalar_t__ tx_ring_size; scalar_t__ num_txbdfree; int /*<<< orphan*/  txlock; int /*<<< orphan*/  rxlock; } ;
struct ethtool_ringparam {scalar_t__ rx_pending; scalar_t__ tx_pending; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ GFAR_RX_MAX_RING_SIZE ; 
 scalar_t__ GFAR_TX_MAX_RING_SIZE ; 
 int IFF_UP ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 struct gfar_private* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 

__attribute__((used)) static int FUNC12(struct net_device *dev, struct ethtool_ringparam *rvals)
{
	struct gfar_private *priv = FUNC3(dev);
	int err = 0;

	if (rvals->rx_pending > GFAR_RX_MAX_RING_SIZE)
		return -EINVAL;

	if (!FUNC2(rvals->rx_pending)) {
		FUNC5("%s: Ring sizes must be a power of 2\n",
				dev->name);
		return -EINVAL;
	}

	if (rvals->tx_pending > GFAR_TX_MAX_RING_SIZE)
		return -EINVAL;

	if (!FUNC2(rvals->tx_pending)) {
		FUNC5("%s: Ring sizes must be a power of 2\n",
				dev->name);
		return -EINVAL;
	}

	if (dev->flags & IFF_UP) {
		unsigned long flags;

		/* Halt TX and RX, and process the frames which
		 * have already been received */
		FUNC7(&priv->txlock, flags);
		FUNC6(&priv->rxlock);

		FUNC1(dev);

		FUNC8(&priv->rxlock);
		FUNC9(&priv->txlock, flags);

		FUNC0(dev, priv->rx_ring_size);

		/* Now we take down the rings to rebuild them */
		FUNC11(dev);
	}

	/* Change the size */
	priv->rx_ring_size = rvals->rx_pending;
	priv->tx_ring_size = rvals->tx_pending;
	priv->num_txbdfree = priv->tx_ring_size;

	/* Rebuild the rings with the new size */
	if (dev->flags & IFF_UP) {
		err = FUNC10(dev);
		FUNC4(dev);
	}
	return err;
}