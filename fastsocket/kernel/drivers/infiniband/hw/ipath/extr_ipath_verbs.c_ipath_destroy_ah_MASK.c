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
struct ipath_ibdev {int /*<<< orphan*/  n_ahs_lock; int /*<<< orphan*/  n_ahs_allocated; } ;
struct ipath_ah {int dummy; } ;
struct ib_ah {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ipath_ah*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct ipath_ah* FUNC3 (struct ib_ah*) ; 
 struct ipath_ibdev* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct ib_ah *ibah)
{
	struct ipath_ibdev *dev = FUNC4(ibah->device);
	struct ipath_ah *ah = FUNC3(ibah);
	unsigned long flags;

	FUNC1(&dev->n_ahs_lock, flags);
	dev->n_ahs_allocated--;
	FUNC2(&dev->n_ahs_lock, flags);

	FUNC0(ah);

	return 0;
}