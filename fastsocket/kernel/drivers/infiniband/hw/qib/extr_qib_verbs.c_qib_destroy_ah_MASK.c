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
struct qib_ibdev {int /*<<< orphan*/  n_ahs_lock; int /*<<< orphan*/  n_ahs_allocated; } ;
struct qib_ah {int /*<<< orphan*/  refcount; } ;
struct ib_ah {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct qib_ah*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct qib_ah* FUNC4 (struct ib_ah*) ; 
 struct qib_ibdev* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct ib_ah *ibah)
{
	struct qib_ibdev *dev = FUNC5(ibah->device);
	struct qib_ah *ah = FUNC4(ibah);
	unsigned long flags;

	if (FUNC0(&ah->refcount) != 0)
		return -EBUSY;

	FUNC2(&dev->n_ahs_lock, flags);
	dev->n_ahs_allocated--;
	FUNC3(&dev->n_ahs_lock, flags);

	FUNC1(ah);

	return 0;
}