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
struct net_device {int features; } ;
struct enic {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct enic*,int /*<<< orphan*/ ) ; 
 int NETIF_F_TSO ; 
 int NETIF_F_TSO6 ; 
 int NETIF_F_TSO_ECN ; 
 int /*<<< orphan*/  TSO ; 
 struct enic* FUNC1 (struct net_device*) ; 

__attribute__((used)) static int FUNC2(struct net_device *netdev, u32 data)
{
	struct enic *enic = FUNC1(netdev);

	if (data && !FUNC0(enic, TSO))
		return -EINVAL;

	if (data)
		netdev->features |=
			NETIF_F_TSO | NETIF_F_TSO6 | NETIF_F_TSO_ECN;
	else
		netdev->features &=
			~(NETIF_F_TSO | NETIF_F_TSO6 | NETIF_F_TSO_ECN);

	return 0;
}