#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  kobj; } ;
struct net_device {int flags; TYPE_3__ dev; struct iw_handler_def* wireless_handlers; int /*<<< orphan*/  dev_addr; int /*<<< orphan*/ * ethtool_ops; int /*<<< orphan*/ * netdev_ops; struct lbs_private* ml_priv; } ;
struct lbs_private {TYPE_2__* dev; struct net_device* mesh_dev; } ;
struct iw_handler_def {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct TYPE_5__ {TYPE_1__ dev; int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int ENOMEM ; 
 int IFF_BROADCAST ; 
 int IFF_MULTICAST ; 
 int /*<<< orphan*/  LBS_DEB_MESH ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ether_setup ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  lbs_ethtool_ops ; 
 int /*<<< orphan*/  lbs_mesh_attr_group ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mesh_handler_def ; 
 int /*<<< orphan*/  mesh_netdev_ops ; 
 int FUNC9 (struct net_device*) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 

__attribute__((used)) static int FUNC12(struct lbs_private *priv)
{
	struct net_device *mesh_dev = NULL;
	int ret = 0;

	FUNC3(LBS_DEB_MESH);

	/* Allocate a virtual mesh device */
	if (!(mesh_dev = FUNC1(0, "msh%d", ether_setup))) {
		FUNC5("init mshX device failed\n");
		ret = -ENOMEM;
		goto done;
	}
	mesh_dev->ml_priv = priv;
	priv->mesh_dev = mesh_dev;

	mesh_dev->netdev_ops = &mesh_netdev_ops;
	mesh_dev->ethtool_ops = &lbs_ethtool_ops;
	FUNC8(mesh_dev->dev_addr, priv->dev->dev_addr,
			sizeof(priv->dev->dev_addr));

	FUNC0(priv->mesh_dev, priv->dev->dev.parent);

#ifdef	WIRELESS_EXT
	mesh_dev->wireless_handlers = (struct iw_handler_def *)&mesh_handler_def;
#endif
	mesh_dev->flags |= IFF_BROADCAST | IFF_MULTICAST;
	/* Register virtual mesh interface */
	ret = FUNC9(mesh_dev);
	if (ret) {
		FUNC7("cannot register mshX virtual interface\n");
		goto err_free;
	}

	ret = FUNC10(&(mesh_dev->dev.kobj), &lbs_mesh_attr_group);
	if (ret)
		goto err_unregister;

	FUNC6(mesh_dev);

	/* Everything successful */
	ret = 0;
	goto done;

err_unregister:
	FUNC11(mesh_dev);

err_free:
	FUNC2(mesh_dev);

done:
	FUNC4(LBS_DEB_MESH, "ret %d", ret);
	return ret;
}