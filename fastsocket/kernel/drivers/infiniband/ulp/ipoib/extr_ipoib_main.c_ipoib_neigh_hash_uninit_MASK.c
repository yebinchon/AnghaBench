#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  deleted; } ;
struct ipoib_dev_priv {TYPE_1__ ntbl; int /*<<< orphan*/  neigh_reap_task; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPOIB_NEIGH_TBL_FLUSH ; 
 int /*<<< orphan*/  IPOIB_STOP_NEIGH_GC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ipoib_dev_priv*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct ipoib_dev_priv*) ; 
 struct ipoib_dev_priv* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct net_device *dev)
{
	struct ipoib_dev_priv *priv = FUNC4(dev);
	int stopped;

	FUNC2(priv, "ipoib_neigh_hash_uninit\n");
	FUNC1(&priv->ntbl.deleted);
	FUNC5(IPOIB_NEIGH_TBL_FLUSH, &priv->flags);

	/* Stop GC if called at init fail need to cancel work */
	stopped = FUNC6(IPOIB_STOP_NEIGH_GC, &priv->flags);
	if (!stopped)
		FUNC0(&priv->neigh_reap_task);

	FUNC3(priv);

	FUNC7(&priv->ntbl.deleted);
}