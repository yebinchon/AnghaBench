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
struct sockaddr {int /*<<< orphan*/  sa_data; } ;
struct port_info {int xact_addr_filt; int /*<<< orphan*/  viid; TYPE_1__* adapter; } ;
struct net_device {int /*<<< orphan*/  addr_len; int /*<<< orphan*/  dev_addr; } ;
struct TYPE_2__ {int /*<<< orphan*/  fn; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct port_info* FUNC2 (struct net_device*) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev, void *p)
{
	int ret;
	struct sockaddr *addr = p;
	struct port_info *pi = FUNC2(dev);

	if (!FUNC0(addr->sa_data))
		return -EADDRNOTAVAIL;

	ret = FUNC3(pi->adapter, pi->adapter->fn, pi->viid,
			    pi->xact_addr_filt, addr->sa_data, true, true);
	if (ret < 0)
		return ret;

	FUNC1(dev->dev_addr, addr->sa_data, dev->addr_len);
	pi->xact_addr_filt = ret;
	return 0;
}