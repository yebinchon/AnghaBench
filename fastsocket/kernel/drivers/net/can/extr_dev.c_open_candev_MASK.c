#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct net_device {TYPE_2__ dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  bitrate; int /*<<< orphan*/  tq; } ;
struct can_priv {int /*<<< orphan*/  restart_timer; TYPE_1__ bittiming; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  can_restart ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct can_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 

int FUNC5(struct net_device *dev)
{
	struct can_priv *priv = FUNC1(dev);

	if (!priv->bittiming.tq && !priv->bittiming.bitrate) {
		FUNC0(dev->dev.parent, "bit-timing not yet defined\n");
		return -EINVAL;
	}

	/* Switch carrier on if device was stopped while in bus-off state */
	if (!FUNC2(dev))
		FUNC3(dev);

	FUNC4(&priv->restart_timer, can_restart, (unsigned long)dev);

	return 0;
}