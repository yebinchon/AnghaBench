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
struct can_priv {int /*<<< orphan*/  restart_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 struct can_priv* FUNC3 (struct net_device*) ; 

void FUNC4(struct net_device *dev)
{
	struct can_priv *priv = FUNC3(dev);

	if (FUNC1(&priv->restart_timer))
		FUNC2(dev);
	FUNC0(dev);
}