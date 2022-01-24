#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
typedef  int u32 ;
struct qib_sge {int length; int sge_length; unsigned int m; unsigned int n; void* vaddr; struct qib_mregion* mr; } ;
struct TYPE_6__ {scalar_t__ pd; int /*<<< orphan*/  device; } ;
struct qib_qp {TYPE_2__ ibqp; } ;
struct TYPE_5__ {int /*<<< orphan*/  device; } ;
struct qib_pd {scalar_t__ user; TYPE_1__ ibpd; } ;
struct qib_mregion {int lkey; scalar_t__ pd; scalar_t__ iova; int length; int access_flags; int page_shift; TYPE_4__** map; scalar_t__ offset; int /*<<< orphan*/  refcount; } ;
struct qib_lkey_table {int /*<<< orphan*/ * table; } ;
struct qib_ibdev {int /*<<< orphan*/  dma_mr; struct qib_lkey_table lk_table; } ;
struct TYPE_8__ {TYPE_3__* segs; } ;
struct TYPE_7__ {size_t length; void* vaddr; } ;

/* Variables and functions */
 size_t QIB_SEGSZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int ib_qib_lkey_table_size ; 
 struct qib_mregion* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct qib_ibdev* FUNC4 (int /*<<< orphan*/ ) ; 
 struct qib_pd* FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int) ; 

int FUNC7(struct qib_qp *qp, struct qib_sge *sge,
		u32 len, u64 vaddr, u32 rkey, int acc)
{
	struct qib_lkey_table *rkt = &FUNC4(qp->ibqp.device)->lk_table;
	struct qib_mregion *mr;
	unsigned n, m;
	size_t off;

	/*
	 * We use RKEY == zero for kernel virtual addresses
	 * (see qib_get_dma_mr and qib_dma.c).
	 */
	FUNC2();
	if (rkey == 0) {
		struct qib_pd *pd = FUNC5(qp->ibqp.pd);
		struct qib_ibdev *dev = FUNC4(pd->ibpd.device);

		if (pd->user)
			goto bail;
		mr = FUNC1(dev->dma_mr);
		if (!mr)
			goto bail;
		if (FUNC6(!FUNC0(&mr->refcount)))
			goto bail;
		FUNC3();

		sge->mr = mr;
		sge->vaddr = (void *) vaddr;
		sge->length = len;
		sge->sge_length = len;
		sge->m = 0;
		sge->n = 0;
		goto ok;
	}

	mr = FUNC1(
		rkt->table[(rkey >> (32 - ib_qib_lkey_table_size))]);
	if (FUNC6(!mr || mr->lkey != rkey || qp->ibqp.pd != mr->pd))
		goto bail;

	off = vaddr - mr->iova;
	if (FUNC6(vaddr < mr->iova || off + len > mr->length ||
		     (mr->access_flags & acc) == 0))
		goto bail;
	if (FUNC6(!FUNC0(&mr->refcount)))
		goto bail;
	FUNC3();

	off += mr->offset;
	if (mr->page_shift) {
		/*
		page sizes are uniform power of 2 so no loop is necessary
		entries_spanned_by_off is the number of times the loop below
		would have executed.
		*/
		size_t entries_spanned_by_off;

		entries_spanned_by_off = off >> mr->page_shift;
		off -= (entries_spanned_by_off << mr->page_shift);
		m = entries_spanned_by_off/QIB_SEGSZ;
		n = entries_spanned_by_off%QIB_SEGSZ;
	} else {
		m = 0;
		n = 0;
		while (off >= mr->map[m]->segs[n].length) {
			off -= mr->map[m]->segs[n].length;
			n++;
			if (n >= QIB_SEGSZ) {
				m++;
				n = 0;
			}
		}
	}
	sge->mr = mr;
	sge->vaddr = mr->map[m]->segs[n].vaddr + off;
	sge->length = mr->map[m]->segs[n].length - off;
	sge->sge_length = len;
	sge->m = m;
	sge->n = n;
ok:
	return 1;
bail:
	FUNC3();
	return 0;
}