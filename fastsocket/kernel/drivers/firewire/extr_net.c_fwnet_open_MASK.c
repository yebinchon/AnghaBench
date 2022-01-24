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
struct fwnet_device {scalar_t__ broadcast_state; } ;

/* Variables and functions */
 scalar_t__ FWNET_BROADCAST_ERROR ; 
 int FUNC0 (struct fwnet_device*) ; 
 struct fwnet_device* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 

__attribute__((used)) static int FUNC3(struct net_device *net)
{
	struct fwnet_device *dev = FUNC1(net);
	int ret;

	if (dev->broadcast_state == FWNET_BROADCAST_ERROR) {
		ret = FUNC0(dev);
		if (ret)
			return ret;
	}
	FUNC2(net);

	return 0;
}