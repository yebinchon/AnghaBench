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
struct net_device {int mtu; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EINVAL ; 
 int XPNET_MAX_MTU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  xpnet ; 

__attribute__((used)) static int
FUNC2(struct net_device *dev, int new_mtu)
{
	/* 68 comes from min TCP+IP+MAC header */
	if ((new_mtu < 68) || (new_mtu > XPNET_MAX_MTU)) {
		FUNC1(xpnet, "ifconfig %s mtu %d failed; value must be "
			"between 68 and %ld\n", dev->name, new_mtu,
			XPNET_MAX_MTU);
		return -EINVAL;
	}

	dev->mtu = new_mtu;
	FUNC0(xpnet, "ifconfig %s mtu set to %d\n", dev->name, new_mtu);
	return 0;
}