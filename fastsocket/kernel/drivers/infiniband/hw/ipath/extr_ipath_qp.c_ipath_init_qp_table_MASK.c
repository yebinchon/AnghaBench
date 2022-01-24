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
struct TYPE_3__ {int last; int max; int nmaps; TYPE_2__* map; int /*<<< orphan*/ * table; } ;
struct ipath_ibdev {TYPE_1__ qp_table; } ;
struct TYPE_4__ {int /*<<< orphan*/ * page; int /*<<< orphan*/  n_free; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  BITS_PER_PAGE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int,int /*<<< orphan*/ ) ; 

int FUNC3(struct ipath_ibdev *idev, int size)
{
	int i;
	int ret;

	idev->qp_table.last = 1;	/* QPN 0 and 1 are special. */
	idev->qp_table.max = size;
	idev->qp_table.nmaps = 1;
	idev->qp_table.table = FUNC2(size * sizeof(*idev->qp_table.table),
				       GFP_KERNEL);
	if (idev->qp_table.table == NULL) {
		ret = -ENOMEM;
		goto bail;
	}

	for (i = 0; i < FUNC0(idev->qp_table.map); i++) {
		FUNC1(&idev->qp_table.map[i].n_free, BITS_PER_PAGE);
		idev->qp_table.map[i].page = NULL;
	}

	ret = 0;

bail:
	return ret;
}