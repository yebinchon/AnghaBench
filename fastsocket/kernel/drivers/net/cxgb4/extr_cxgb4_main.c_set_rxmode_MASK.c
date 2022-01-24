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
struct port_info {int /*<<< orphan*/  viid; TYPE_1__* adapter; } ;
struct net_device {int flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  fn; } ;

/* Variables and functions */
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 struct port_info* FUNC0 (struct net_device*) ; 
 int FUNC1 (struct net_device*,int) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,int,int) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev, int mtu, bool sleep_ok)
{
	int ret;
	struct port_info *pi = FUNC0(dev);

	ret = FUNC1(dev, sleep_ok);
	if (ret == 0)
		ret = FUNC2(pi->adapter, pi->adapter->fn, pi->viid, mtu,
				    (dev->flags & IFF_PROMISC) ? 1 : 0,
				    (dev->flags & IFF_ALLMULTI) ? 1 : 0, 1, -1,
				    sleep_ok);
	return ret;
}