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
typedef  scalar_t__ u32 ;
struct net_device {int mtu; int /*<<< orphan*/  features; } ;
struct jme_adapter {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  JME_FLAG_TXCSUM ; 
 int /*<<< orphan*/  NETIF_F_HW_CSUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct jme_adapter* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(struct net_device *netdev, u32 on)
{
	struct jme_adapter *jme = FUNC1(netdev);

	if (on) {
		FUNC2(JME_FLAG_TXCSUM, &jme->flags);
		if (netdev->mtu <= 1900)
			netdev->features |= NETIF_F_HW_CSUM;
	} else {
		FUNC0(JME_FLAG_TXCSUM, &jme->flags);
		netdev->features &= ~NETIF_F_HW_CSUM;
	}

	return 0;
}