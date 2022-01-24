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
struct wan_device {struct net_device* dev; } ;
struct net_device {int dummy; } ;
struct cycx_x25_channel {scalar_t__ lcn; struct net_device* slave; } ;
typedef  scalar_t__ s16 ;

/* Variables and functions */
 struct cycx_x25_channel* FUNC0 (struct net_device*) ; 

__attribute__((used)) static struct net_device *FUNC1(struct wan_device *wandev,
						  s16 lcn)
{
	struct net_device *dev = wandev->dev;
	struct cycx_x25_channel *chan;

	while (dev) {
		chan = FUNC0(dev);

		if (chan->lcn == lcn)
			break;
		dev = chan->slave;
	}
	return dev;
}