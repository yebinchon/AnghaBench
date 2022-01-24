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
struct TYPE_4__ {int mapsz; int access_flags; int max_segs; struct ipath_fmr** map; scalar_t__ offset; scalar_t__ length; scalar_t__ iova; scalar_t__ user_base; struct ib_pd* pd; int /*<<< orphan*/  lkey; } ;
struct ib_fmr {int /*<<< orphan*/  lkey; int /*<<< orphan*/  rkey; } ;
struct ipath_fmr {TYPE_2__ mr; struct ib_fmr ibfmr; int /*<<< orphan*/  page_shift; } ;
struct ib_pd {int /*<<< orphan*/  device; } ;
struct ib_fmr_attr {int max_pages; int /*<<< orphan*/  page_shift; } ;
struct TYPE_3__ {int /*<<< orphan*/  lk_table; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct ib_fmr* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IPATH_SEGSZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct ipath_fmr*) ; 
 void* FUNC3 (int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 

struct ib_fmr *FUNC5(struct ib_pd *pd, int mr_access_flags,
			       struct ib_fmr_attr *fmr_attr)
{
	struct ipath_fmr *fmr;
	int m, i = 0;
	struct ib_fmr *ret;

	/* Allocate struct plus pointers to first level page tables. */
	m = (fmr_attr->max_pages + IPATH_SEGSZ - 1) / IPATH_SEGSZ;
	fmr = FUNC3(sizeof *fmr + m * sizeof fmr->mr.map[0], GFP_KERNEL);
	if (!fmr)
		goto bail;

	/* Allocate first level page tables. */
	for (; i < m; i++) {
		fmr->mr.map[i] = FUNC3(sizeof *fmr->mr.map[0],
					 GFP_KERNEL);
		if (!fmr->mr.map[i])
			goto bail;
	}
	fmr->mr.mapsz = m;

	/*
	 * ib_alloc_fmr() will initialize fmr->ibfmr except for lkey &
	 * rkey.
	 */
	if (!FUNC1(&FUNC4(pd->device)->lk_table, &fmr->mr))
		goto bail;
	fmr->ibfmr.rkey = fmr->ibfmr.lkey = fmr->mr.lkey;
	/*
	 * Resources are allocated but no valid mapping (RKEY can't be
	 * used).
	 */
	fmr->mr.pd = pd;
	fmr->mr.user_base = 0;
	fmr->mr.iova = 0;
	fmr->mr.length = 0;
	fmr->mr.offset = 0;
	fmr->mr.access_flags = mr_access_flags;
	fmr->mr.max_segs = fmr_attr->max_pages;
	fmr->page_shift = fmr_attr->page_shift;

	ret = &fmr->ibfmr;
	goto done;

bail:
	while (i)
		FUNC2(fmr->mr.map[--i]);
	FUNC2(fmr);
	ret = FUNC0(-ENOMEM);

done:
	return ret;
}