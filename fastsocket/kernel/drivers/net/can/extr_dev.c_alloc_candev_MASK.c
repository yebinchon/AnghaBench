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
struct can_priv {int /*<<< orphan*/  restart_timer; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAN_STATE_STOPPED ; 
 struct net_device* FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  can_setup ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct can_priv* FUNC2 (struct net_device*) ; 

struct net_device *FUNC3(int sizeof_priv)
{
	struct net_device *dev;
	struct can_priv *priv;

	dev = FUNC0(sizeof_priv, "can%d", can_setup);
	if (!dev)
		return NULL;

	priv = FUNC2(dev);

	priv->state = CAN_STATE_STOPPED;

	FUNC1(&priv->restart_timer);

	return dev;
}