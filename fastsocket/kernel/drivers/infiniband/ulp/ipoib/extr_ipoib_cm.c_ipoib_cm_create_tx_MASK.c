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
struct ipoib_path {int dummy; } ;
struct ipoib_neigh {struct ipoib_cm_tx* cm; } ;
struct TYPE_2__ {int /*<<< orphan*/  start_task; int /*<<< orphan*/  start_list; } ;
struct ipoib_dev_priv {TYPE_1__ cm; } ;
struct ipoib_cm_tx {int /*<<< orphan*/  flags; int /*<<< orphan*/  list; struct net_device* dev; struct ipoib_path* path; struct ipoib_neigh* neigh; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  IPOIB_FLAG_INITIALIZED ; 
 int /*<<< orphan*/  ipoib_workqueue ; 
 struct ipoib_cm_tx* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct ipoib_dev_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

struct ipoib_cm_tx *FUNC5(struct net_device *dev, struct ipoib_path *path,
				       struct ipoib_neigh *neigh)
{
	struct ipoib_dev_priv *priv = FUNC2(dev);
	struct ipoib_cm_tx *tx;

	tx = FUNC0(sizeof *tx, GFP_ATOMIC);
	if (!tx)
		return NULL;

	neigh->cm = tx;
	tx->neigh = neigh;
	tx->path = path;
	tx->dev = dev;
	FUNC1(&tx->list, &priv->cm.start_list);
	FUNC4(IPOIB_FLAG_INITIALIZED, &tx->flags);
	FUNC3(ipoib_workqueue, &priv->cm.start_task);
	return tx;
}