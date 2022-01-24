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
struct net_device {int /*<<< orphan*/  dev; } ;
struct mv643xx_eth_private {int rx_ring_size; int tx_ring_size; } ;
struct ethtool_ringparam {int rx_pending; int tx_pending; scalar_t__ rx_jumbo_pending; scalar_t__ rx_mini_pending; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 struct mv643xx_eth_private* FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (struct net_device*) ; 

__attribute__((used)) static int
FUNC5(struct net_device *dev, struct ethtool_ringparam *er)
{
	struct mv643xx_eth_private *mp = FUNC3(dev);

	if (er->rx_mini_pending || er->rx_jumbo_pending)
		return -EINVAL;

	mp->rx_ring_size = er->rx_pending < 4096 ? er->rx_pending : 4096;
	mp->tx_ring_size = er->tx_pending < 4096 ? er->tx_pending : 4096;

	if (FUNC4(dev)) {
		FUNC2(dev);
		if (FUNC1(dev)) {
			FUNC0(KERN_ERR, &dev->dev,
				   "fatal error on re-opening device after "
				   "ring param change\n");
			return -ENOMEM;
		}
	}

	return 0;
}