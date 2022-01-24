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
struct usbnet {int dummy; } ;
struct sockaddr {int /*<<< orphan*/  sa_data; } ;
struct net_device {int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  addr_len; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  HIF_REG_ETHERNET_ADDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct usbnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct usbnet* FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct net_device *netdev, void *p)
{
	int ret;
	struct usbnet *dev = FUNC3(netdev);
	struct sockaddr *addr = p;

	if (FUNC4(netdev))
		return -EBUSY;

	if (!FUNC0(addr->sa_data))
		return -EINVAL;

	FUNC2(netdev->dev_addr, addr->sa_data, netdev->addr_len);

	ret = FUNC1(dev, HIF_REG_ETHERNET_ADDR, ETH_ALEN,
			netdev->dev_addr);

	if (ret < 0)
		return ret;

	return 0;
}