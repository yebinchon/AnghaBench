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
struct mthca_srq {int refcount; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct mthca_dev {TYPE_1__ srq_table; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC2(struct mthca_dev *dev, struct mthca_srq *srq)
{
	int c;

	FUNC0(&dev->srq_table.lock);
	c = srq->refcount;
	FUNC1(&dev->srq_table.lock);

	return c;
}