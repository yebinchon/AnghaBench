#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct ipoib_dev_priv {int pkey; int child_type; TYPE_1__* dev; int /*<<< orphan*/  child_intfs; int /*<<< orphan*/  list; TYPE_1__* parent; int /*<<< orphan*/  port; TYPE_3__* ca; int /*<<< orphan*/  flags; int /*<<< orphan*/  admin_mtu; int /*<<< orphan*/  mcast_mtu; int /*<<< orphan*/  max_ib_mtu; } ;
struct TYPE_13__ {int /*<<< orphan*/  name; } ;
struct TYPE_12__ {int* broadcast; int /*<<< orphan*/  ifindex; int /*<<< orphan*/  iflink; int /*<<< orphan*/  dev; int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  mtu; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  INFINIBAND_ALEN ; 
 int /*<<< orphan*/  IPOIB_FLAG_SUBINTERFACE ; 
 int IPOIB_LEGACY_CHILD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dev_attr_parent ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int FUNC8 (TYPE_1__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct ipoib_dev_priv*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (struct ipoib_dev_priv*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 

int FUNC16(struct ipoib_dev_priv *ppriv, struct ipoib_dev_priv *priv,
		     u16 pkey, int type)
{
	int result;

	priv->max_ib_mtu = ppriv->max_ib_mtu;
	/* MTU will be reset when mcast join happens */
	priv->dev->mtu   = FUNC0(priv->max_ib_mtu);
	priv->mcast_mtu  = priv->admin_mtu = priv->dev->mtu;
	FUNC14(IPOIB_FLAG_SUBINTERFACE, &priv->flags);

	result = FUNC9(priv, ppriv->ca);
	if (result)
		goto err;

	priv->pkey = pkey;

	FUNC12(priv->dev->dev_addr, ppriv->dev->dev_addr, INFINIBAND_ALEN);
	priv->dev->broadcast[8] = pkey >> 8;
	priv->dev->broadcast[9] = pkey & 0xff;

	result = FUNC8(priv->dev, ppriv->ca, ppriv->port);
	if (result < 0) {
		FUNC10(ppriv, "failed to initialize subinterface: "
			   "device %s, port %d",
			   ppriv->ca->name, ppriv->port);
		goto err;
	}

	result = FUNC13(priv->dev);
	if (result) {
		FUNC10(priv, "failed to initialize; error %i", result);
		goto register_failed;
	}

	priv->parent = ppriv->dev;

	FUNC5(priv->dev);

	/* RTNL childs don't need proprietary sysfs entries */
	if (type == IPOIB_LEGACY_CHILD) {
		if (FUNC4(priv->dev))
			goto sysfs_failed;
		if (FUNC2(priv->dev))
			goto sysfs_failed;
		if (FUNC3(priv->dev))
			goto sysfs_failed;

		if (FUNC1(&priv->dev->dev, &dev_attr_parent))
			goto sysfs_failed;
	}

	priv->child_type  = type;
	priv->dev->iflink = ppriv->dev->ifindex;
	FUNC11(&priv->list, &ppriv->child_intfs);

	return 0;

sysfs_failed:
	result = -ENOMEM;
	FUNC6(priv->dev);
	FUNC15(priv->dev);

register_failed:
	FUNC7(priv->dev);

err:
	return result;
}