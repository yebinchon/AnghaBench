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
struct notifier_block {int dummy; } ;
struct net_device {int /*<<< orphan*/ * netdev_ops; } ;

/* Variables and functions */
 unsigned long NETDEV_CHANGENAME ; 
 int NOTIFY_DONE ; 
 int /*<<< orphan*/  efx_netdev_ops ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 

__attribute__((used)) static int FUNC2(struct notifier_block *this,
			    unsigned long event, void *ptr)
{
	struct net_device *net_dev = ptr;

	if (net_dev->netdev_ops == &efx_netdev_ops &&
	    event == NETDEV_CHANGENAME)
		FUNC0(FUNC1(net_dev));

	return NOTIFY_DONE;
}