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
typedef  scalar_t__ u16 ;
struct fc_exch_pool {int /*<<< orphan*/  lock; } ;
struct fc_exch_mgr {scalar_t__ min_xid; scalar_t__ max_xid; int /*<<< orphan*/  pool; } ;
struct fc_exch {scalar_t__ xid; } ;

/* Variables and functions */
 scalar_t__ fc_cpu_mask ; 
 scalar_t__ fc_cpu_order ; 
 int /*<<< orphan*/  FUNC0 (struct fc_exch*) ; 
 struct fc_exch* FUNC1 (struct fc_exch_pool*,scalar_t__) ; 
 struct fc_exch_pool* FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct fc_exch *FUNC5(struct fc_exch_mgr *mp, u16 xid)
{
	struct fc_exch_pool *pool;
	struct fc_exch *ep = NULL;

	if ((xid >= mp->min_xid) && (xid <= mp->max_xid)) {
		pool = FUNC2(mp->pool, xid & fc_cpu_mask);
		FUNC3(&pool->lock);
		ep = FUNC1(pool, (xid - mp->min_xid) >> fc_cpu_order);
		if (ep && ep->xid == xid)
			FUNC0(ep);
		FUNC4(&pool->lock);
	}
	return ep;
}