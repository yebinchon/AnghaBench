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
struct net_device {int /*<<< orphan*/  features; } ;
struct bnad {int /*<<< orphan*/  conf_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  NETIF_F_TSO ; 
 int /*<<< orphan*/  NETIF_F_TSO6 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct bnad* FUNC2 (struct net_device*) ; 

__attribute__((used)) static int
FUNC3(struct net_device *netdev, u32 tso)
{
	struct bnad *bnad = FUNC2(netdev);

	FUNC0(&bnad->conf_mutex);
	if (tso) {
		netdev->features |= NETIF_F_TSO;
		netdev->features |= NETIF_F_TSO6;
	} else {
		netdev->features &= ~NETIF_F_TSO;
		netdev->features &= ~NETIF_F_TSO6;
	}
	FUNC1(&bnad->conf_mutex);
	return 0;
}