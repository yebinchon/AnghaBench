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
struct net_device {int dummy; } ;
struct inet6_ifaddr {int /*<<< orphan*/  addr; } ;
struct inet6_dev {int /*<<< orphan*/  lock; struct inet6_ifaddr* addr_list; } ;
struct in6_addr {int dummy; } ;

/* Variables and functions */
 struct inet6_dev* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct inet6_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct in6_addr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct in6_addr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct net_device *dev, struct in6_addr *addr)
{
	struct inet6_dev *idev;
	struct inet6_ifaddr *ifa;

	if (!dev)
		return;

	idev = FUNC0(dev);
	if (!idev)
		return;

	FUNC4(&idev->lock);
	ifa = idev->addr_list;
	if (ifa)
		FUNC2(addr, &ifa->addr);
	else
		FUNC3(addr, 0, 0, 0, 0);

	FUNC5(&idev->lock);

	FUNC1(idev);
}