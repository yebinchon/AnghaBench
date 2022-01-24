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
struct cycx_x25_channel {int /*<<< orphan*/  lcn; int /*<<< orphan*/  link; int /*<<< orphan*/  card; scalar_t__ svc; } ;

/* Variables and functions */
 int /*<<< orphan*/  WAN_DISCONNECTED ; 
 int /*<<< orphan*/  WAN_DISCONNECTING ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ ) ; 
 struct cycx_x25_channel* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct net_device *dev)
{
	struct cycx_x25_channel *chan = FUNC1(dev);

	if (chan->svc) {
		FUNC2(chan->card, chan->link, chan->lcn, 0, 0);
		FUNC0(dev, WAN_DISCONNECTING);
	} else
		FUNC0(dev, WAN_DISCONNECTED);
}