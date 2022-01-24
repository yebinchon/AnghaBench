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
struct net_device {int /*<<< orphan*/ * netdev_ops; } ;

/* Variables and functions */
 struct net_device* FUNC0 (int) ; 
 int /*<<< orphan*/  ei_netdev_ops ; 

struct net_device *FUNC1(int size)
{
	struct net_device *dev = FUNC0(size);
	if (dev)
		dev->netdev_ops = &ei_netdev_ops;
	return dev;
}