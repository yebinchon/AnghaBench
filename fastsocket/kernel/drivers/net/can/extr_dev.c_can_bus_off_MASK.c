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
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;
struct net_device {TYPE_1__ dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  bus_off; } ;
struct can_priv {int restart_ms; int /*<<< orphan*/  restart_timer; TYPE_2__ can_stats; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct can_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 

void FUNC4(struct net_device *dev)
{
	struct can_priv *priv = FUNC2(dev);

	FUNC0(dev->dev.parent, "bus-off\n");

	FUNC3(dev);
	priv->can_stats.bus_off++;

	if (priv->restart_ms)
		FUNC1(&priv->restart_timer,
			  jiffies + (priv->restart_ms * HZ) / 1000);
}