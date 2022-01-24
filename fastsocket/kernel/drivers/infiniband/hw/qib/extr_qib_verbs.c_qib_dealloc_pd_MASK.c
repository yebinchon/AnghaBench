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
struct qib_pd {int dummy; } ;
struct qib_ibdev {int /*<<< orphan*/  n_pds_lock; int /*<<< orphan*/  n_pds_allocated; } ;
struct ib_pd {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qib_pd*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct qib_ibdev* FUNC3 (int /*<<< orphan*/ ) ; 
 struct qib_pd* FUNC4 (struct ib_pd*) ; 

__attribute__((used)) static int FUNC5(struct ib_pd *ibpd)
{
	struct qib_pd *pd = FUNC4(ibpd);
	struct qib_ibdev *dev = FUNC3(ibpd->device);

	FUNC1(&dev->n_pds_lock);
	dev->n_pds_allocated--;
	FUNC2(&dev->n_pds_lock);

	FUNC0(pd);

	return 0;
}