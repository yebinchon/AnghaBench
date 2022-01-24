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
typedef  int u32 ;
struct net_device {int dummy; } ;
struct mlx4_en_priv {int rx_ring_num; TYPE_1__* prof; scalar_t__ port_up; struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {int /*<<< orphan*/  state_lock; } ;
struct TYPE_2__ {int rss_rings; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct mlx4_en_priv*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct mlx4_en_priv* FUNC6 (struct net_device*) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev,
		const u32 *ring_index)
{
	struct mlx4_en_priv *priv = FUNC6(dev);
	struct mlx4_en_dev *mdev = priv->mdev;
	int port_up = 0;
	int err = 0;
	int i;
	int rss_rings = 0;

	/* Calculate RSS table size and make sure flows are spread evenly
	 * between rings
	 */
	for (i = 0; i < priv->rx_ring_num; i++) {
		if (i > 0 && !ring_index[i] && !rss_rings)
			rss_rings = i;

		if (ring_index[i] != (i % (rss_rings ?: priv->rx_ring_num)))
			return -EINVAL;
	}

	if (!rss_rings)
		rss_rings = priv->rx_ring_num;

	/* RSS table size must be an order of 2 */
	if (!FUNC1(rss_rings))
		return -EINVAL;

	FUNC4(&mdev->state_lock);
	if (priv->port_up) {
		port_up = 1;
		FUNC3(dev, 1);
	}

	priv->prof->rss_rings = rss_rings;

	if (port_up) {
		err = FUNC2(dev);
		if (err)
			FUNC0(priv, "Failed starting port\n");
	}

	FUNC5(&mdev->state_lock);
	return err;
}