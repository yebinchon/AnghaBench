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
struct eth1394_priv {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int EINVAL ; 
 int ERANGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev, int new_mtu)
{
	int max_mtu;

	if (new_mtu < 68)
		return -EINVAL;

	max_mtu = FUNC1(
			((struct eth1394_priv *)FUNC2(dev))->host);
	if (new_mtu > max_mtu) {
		FUNC0(KERN_INFO, dev->name,
			      "Local node constrains MTU to %d\n", max_mtu);
		return -ERANGE;
	}

	dev->mtu = new_mtu;
	return 0;
}