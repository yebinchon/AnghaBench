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
typedef  int /*<<< orphan*/  uint32_t ;
struct net_device {int flags; } ;
struct gfar_private {int device_flags; int /*<<< orphan*/  bflock; int /*<<< orphan*/  rx_csum_enable; int /*<<< orphan*/  rx_ring_size; int /*<<< orphan*/  txlock; int /*<<< orphan*/  rxlock; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int FSL_GIANFAR_DEV_HAS_CSUM ; 
 int IFF_UP ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct gfar_private* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 

__attribute__((used)) static int FUNC10(struct net_device *dev, uint32_t data)
{
	struct gfar_private *priv = FUNC2(dev);
	unsigned long flags;
	int err = 0;

	if (!(priv->device_flags & FSL_GIANFAR_DEV_HAS_CSUM))
		return -EOPNOTSUPP;

	if (dev->flags & IFF_UP) {
		/* Halt TX and RX, and process the frames which
		 * have already been received */
		FUNC5(&priv->txlock, flags);
		FUNC4(&priv->rxlock);

		FUNC1(dev);

		FUNC6(&priv->rxlock);
		FUNC7(&priv->txlock, flags);

		FUNC0(dev, priv->rx_ring_size);

		/* Now we take down the rings to rebuild them */
		FUNC9(dev);
	}

	FUNC5(&priv->bflock, flags);
	priv->rx_csum_enable = data;
	FUNC7(&priv->bflock, flags);

	if (dev->flags & IFF_UP) {
		err = FUNC8(dev);
		FUNC3(dev);
	}
	return err;
}