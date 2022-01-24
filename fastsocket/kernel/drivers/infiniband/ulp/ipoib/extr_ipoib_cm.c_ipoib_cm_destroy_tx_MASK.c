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
struct TYPE_3__ {int /*<<< orphan*/  reap_task; int /*<<< orphan*/  reap_list; } ;
struct ipoib_dev_priv {int /*<<< orphan*/  lock; TYPE_1__ cm; } ;
struct ipoib_cm_tx {TYPE_2__* neigh; int /*<<< orphan*/  list; int /*<<< orphan*/  flags; int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {scalar_t__ daddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPOIB_FLAG_INITIALIZED ; 
 int /*<<< orphan*/  FUNC0 (struct ipoib_dev_priv*,char*,scalar_t__) ; 
 int /*<<< orphan*/  ipoib_workqueue ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct ipoib_dev_priv* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC7(struct ipoib_cm_tx *tx)
{
	struct ipoib_dev_priv *priv = FUNC2(tx->dev);
	unsigned long flags;
	if (FUNC6(IPOIB_FLAG_INITIALIZED, &tx->flags)) {
		FUNC4(&priv->lock, flags);
		FUNC1(&tx->list, &priv->cm.reap_list);
		FUNC3(ipoib_workqueue, &priv->cm.reap_task);
		FUNC0(priv, "Reap connection for gid %pI6\n",
			  tx->neigh->daddr + 4);
		tx->neigh = NULL;
		FUNC5(&priv->lock, flags);
	}
}