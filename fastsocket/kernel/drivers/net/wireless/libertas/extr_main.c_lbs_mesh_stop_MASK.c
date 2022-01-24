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
struct net_device {struct lbs_private* ml_priv; } ;
struct lbs_private {int /*<<< orphan*/  mcast_work; int /*<<< orphan*/  driver_lock; int /*<<< orphan*/  mesh_connect_status; scalar_t__ mesh_open; } ;

/* Variables and functions */
 int /*<<< orphan*/  LBS_DEB_MESH ; 
 int /*<<< orphan*/  LBS_DISCONNECTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev)
{
	struct lbs_private *priv = dev->ml_priv;

	FUNC0(LBS_DEB_MESH);
	FUNC5(&priv->driver_lock);

	priv->mesh_open = 0;
	priv->mesh_connect_status = LBS_DISCONNECTED;

	FUNC3(dev);
	FUNC2(dev);

	FUNC6(&priv->driver_lock);

	FUNC4(&priv->mcast_work);

	FUNC1(LBS_DEB_MESH);
	return 0;
}