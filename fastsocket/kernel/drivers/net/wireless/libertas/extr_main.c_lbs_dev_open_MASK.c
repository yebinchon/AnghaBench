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
struct lbs_private {int mesh_open; int infra_open; scalar_t__ connect_status; int /*<<< orphan*/  driver_lock; int /*<<< orphan*/  tx_pending_len; scalar_t__ mesh_connect_status; struct net_device* mesh_dev; scalar_t__ monitormode; } ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ LBS_CONNECTED ; 
 int /*<<< orphan*/  LBS_DEB_NET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev)
{
	struct lbs_private *priv = dev->ml_priv;
	int ret = 0;

	FUNC0(LBS_DEB_NET);

	FUNC5(&priv->driver_lock);

	if (priv->monitormode) {
		ret = -EBUSY;
		goto out;
	}

	if (dev == priv->mesh_dev) {
		priv->mesh_open = 1;
		priv->mesh_connect_status = LBS_CONNECTED;
		FUNC3(dev);
	} else {
		priv->infra_open = 1;

		if (priv->connect_status == LBS_CONNECTED)
			FUNC3(dev);
		else
			FUNC2(dev);
	}

	if (!priv->tx_pending_len)
		FUNC4(dev);
 out:

	FUNC6(&priv->driver_lock);
	FUNC1(LBS_DEB_NET, "ret %d", ret);
	return ret;
}