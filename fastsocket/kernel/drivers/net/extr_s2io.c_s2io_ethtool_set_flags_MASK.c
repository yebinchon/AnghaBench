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
struct s2io_nic {int lro; } ;
struct net_device {int features; } ;

/* Variables and functions */
 int EINVAL ; 
 int ETH_FLAG_LRO ; 
 int NETIF_F_LRO ; 
 scalar_t__ lro_enable ; 
 struct s2io_nic* FUNC0 (struct net_device*) ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct s2io_nic*) ; 
 int FUNC3 (struct s2io_nic*) ; 
 int /*<<< orphan*/  FUNC4 (struct s2io_nic*) ; 
 int /*<<< orphan*/  FUNC5 (struct s2io_nic*) ; 
 int /*<<< orphan*/  FUNC6 (struct s2io_nic*) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev, u32 data)
{
	struct s2io_nic *sp = FUNC0(dev);
	int rc = 0;
	int changed = 0;

	if (data & ~ETH_FLAG_LRO)
		return -EINVAL;

	if (data & ETH_FLAG_LRO) {
		if (lro_enable) {
			if (!(dev->features & NETIF_F_LRO)) {
				dev->features |= NETIF_F_LRO;
				changed = 1;
			}
		} else
			rc = -EINVAL;
	} else if (dev->features & NETIF_F_LRO) {
		dev->features &= ~NETIF_F_LRO;
		changed = 1;
	}

	if (changed && FUNC1(dev)) {
		FUNC6(sp);
		FUNC2(sp);
		sp->lro = !!(dev->features & NETIF_F_LRO);
		rc = FUNC3(sp);
		if (rc)
			FUNC4(sp);
		else
			FUNC5(sp);
	}

	return rc;
}