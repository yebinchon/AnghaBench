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
struct net_device_stats {int dummy; } ;
struct net_device {int dummy; } ;
struct cycx_x25_channel {struct net_device_stats ifstats; } ;

/* Variables and functions */
 struct cycx_x25_channel* FUNC0 (struct net_device*) ; 

__attribute__((used)) static struct net_device_stats *FUNC1(struct net_device *dev)
{
	struct cycx_x25_channel *chan = FUNC0(dev);

	return chan ? &chan->ifstats : NULL;
}