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
struct TYPE_2__ {int /*<<< orphan*/  list; } ;
struct ipath_verbs_txreq {TYPE_1__ txreq; } ;
struct ipath_ibdev {int /*<<< orphan*/  pending_lock; int /*<<< orphan*/  txreq_free; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline void FUNC3(struct ipath_ibdev *dev,
			     struct ipath_verbs_txreq *tx)
{
	unsigned long flags;

	FUNC1(&dev->pending_lock, flags);
	FUNC0(&tx->txreq.list, &dev->txreq_free);
	FUNC2(&dev->pending_lock, flags);
}