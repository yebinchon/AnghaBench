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
struct cycx_x25_channel {scalar_t__ state; } ;

/* Variables and functions */
 scalar_t__ WAN_CONNECTED ; 
 scalar_t__ WAN_CONNECTING ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 struct cycx_x25_channel* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev)
{
	struct cycx_x25_channel *chan = FUNC1(dev);

	FUNC2(dev);

	if (chan->state == WAN_CONNECTED || chan->state == WAN_CONNECTING)
		FUNC0(dev);

	return 0;
}