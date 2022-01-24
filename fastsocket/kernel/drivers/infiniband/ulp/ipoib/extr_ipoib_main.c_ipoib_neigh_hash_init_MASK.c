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
typedef  int u32 ;
struct ipoib_neigh_table {int /*<<< orphan*/  entries; struct ipoib_neigh_hash* htbl; } ;
struct ipoib_neigh_hash {int size; int mask; struct ipoib_neigh_table* ntbl; struct ipoib_neigh** buckets; } ;
struct ipoib_neigh {int dummy; } ;
struct ipoib_dev_priv {int /*<<< orphan*/  neigh_reap_task; int /*<<< orphan*/  flags; struct ipoib_neigh_table ntbl; } ;
struct TYPE_2__ {int /*<<< orphan*/  gc_interval; int /*<<< orphan*/  gc_thresh3; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IPOIB_NEIGH_TBL_FLUSH ; 
 int /*<<< orphan*/  IPOIB_STOP_NEIGH_GC ; 
 TYPE_1__ arp_tbl ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ipoib_workqueue ; 
 int /*<<< orphan*/  FUNC2 (struct ipoib_neigh_hash*) ; 
 void* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct ipoib_dev_priv *priv)
{
	struct ipoib_neigh_table *ntbl = &priv->ntbl;
	struct ipoib_neigh_hash *htbl;
	struct ipoib_neigh **buckets;
	u32 size;

	FUNC1(IPOIB_NEIGH_TBL_FLUSH, &priv->flags);
	ntbl->htbl = NULL;
	htbl = FUNC3(sizeof(*htbl), GFP_KERNEL);
	if (!htbl)
		return -ENOMEM;
	FUNC6(IPOIB_STOP_NEIGH_GC, &priv->flags);
	size = FUNC5(arp_tbl.gc_thresh3);
	buckets = FUNC3(size * sizeof(*buckets), GFP_KERNEL);
	if (!buckets) {
		FUNC2(htbl);
		return -ENOMEM;
	}
	htbl->size = size;
	htbl->mask = (size - 1);
	htbl->buckets = buckets;
	ntbl->htbl = htbl;
	htbl->ntbl = ntbl;
	FUNC0(&ntbl->entries, 0);

	/* start garbage collection */
	FUNC1(IPOIB_STOP_NEIGH_GC, &priv->flags);
	FUNC4(ipoib_workqueue, &priv->neigh_reap_task,
			   arp_tbl.gc_interval);

	return 0;
}