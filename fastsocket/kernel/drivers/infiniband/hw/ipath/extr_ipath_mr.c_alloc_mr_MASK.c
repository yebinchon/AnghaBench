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
struct TYPE_4__ {int mapsz; struct ipath_mr** map; int /*<<< orphan*/  lkey; } ;
struct TYPE_3__ {int /*<<< orphan*/  lkey; int /*<<< orphan*/  rkey; } ;
struct ipath_mr {TYPE_2__ mr; TYPE_1__ ibmr; } ;
struct ipath_lkey_table {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IPATH_SEGSZ ; 
 int /*<<< orphan*/  FUNC0 (struct ipath_lkey_table*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (struct ipath_mr*) ; 
 void* FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct ipath_mr *FUNC3(int count,
				 struct ipath_lkey_table *lk_table)
{
	struct ipath_mr *mr;
	int m, i = 0;

	/* Allocate struct plus pointers to first level page tables. */
	m = (count + IPATH_SEGSZ - 1) / IPATH_SEGSZ;
	mr = FUNC2(sizeof *mr + m * sizeof mr->mr.map[0], GFP_KERNEL);
	if (!mr)
		goto done;

	/* Allocate first level page tables. */
	for (; i < m; i++) {
		mr->mr.map[i] = FUNC2(sizeof *mr->mr.map[0], GFP_KERNEL);
		if (!mr->mr.map[i])
			goto bail;
	}
	mr->mr.mapsz = m;

	/*
	 * ib_reg_phys_mr() will initialize mr->ibmr except for
	 * lkey and rkey.
	 */
	if (!FUNC0(lk_table, &mr->mr))
		goto bail;
	mr->ibmr.rkey = mr->ibmr.lkey = mr->mr.lkey;

	goto done;

bail:
	while (i) {
		i--;
		FUNC1(mr->mr.map[i]);
	}
	FUNC1(mr);
	mr = NULL;

done:
	return mr;
}