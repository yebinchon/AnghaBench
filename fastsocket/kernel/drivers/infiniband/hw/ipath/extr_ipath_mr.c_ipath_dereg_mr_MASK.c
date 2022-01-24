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
struct TYPE_3__ {int mapsz; struct ipath_mr** map; } ;
struct ipath_mr {scalar_t__ umem; TYPE_1__ mr; } ;
struct ib_mr {int /*<<< orphan*/  lkey; int /*<<< orphan*/  device; } ;
struct TYPE_4__ {int /*<<< orphan*/  lk_table; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ipath_mr*) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ) ; 
 struct ipath_mr* FUNC4 (struct ib_mr*) ; 

int FUNC5(struct ib_mr *ibmr)
{
	struct ipath_mr *mr = FUNC4(ibmr);
	int i;

	FUNC1(&FUNC3(ibmr->device)->lk_table, ibmr->lkey);
	i = mr->mr.mapsz;
	while (i) {
		i--;
		FUNC2(mr->mr.map[i]);
	}

	if (mr->umem)
		FUNC0(mr->umem);

	FUNC2(mr);
	return 0;
}