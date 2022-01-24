#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct qib_sge {scalar_t__ length; scalar_t__ sge_length; unsigned int m; unsigned int n; void* vaddr; struct qib_mregion* mr; } ;
struct TYPE_4__ {int /*<<< orphan*/  device; } ;
struct qib_pd {TYPE_1__ ibpd; scalar_t__ user; } ;
struct qib_mregion {scalar_t__ lkey; size_t user_base; scalar_t__ length; int access_flags; int page_shift; TYPE_3__** map; scalar_t__ offset; int /*<<< orphan*/  refcount; TYPE_1__* pd; } ;
struct qib_lkey_table {int /*<<< orphan*/ * table; } ;
struct qib_ibdev {int /*<<< orphan*/  dma_mr; } ;
struct ib_sge {scalar_t__ lkey; size_t addr; scalar_t__ length; } ;
struct TYPE_6__ {TYPE_2__* segs; } ;
struct TYPE_5__ {size_t length; void* vaddr; } ;

/* Variables and functions */
 size_t QIB_SEGSZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int ib_qib_lkey_table_size ; 
 struct qib_mregion* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct qib_ibdev* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 

int FUNC6(struct qib_lkey_table *rkt, struct qib_pd *pd,
		struct qib_sge *isge, struct ib_sge *sge, int acc)
{
	struct qib_mregion *mr;
	unsigned n, m;
	size_t off;

	/*
	 * We use LKEY == zero for kernel virtual addresses
	 * (see qib_get_dma_mr and qib_dma.c).
	 */
	FUNC2();
	if (sge->lkey == 0) {
		struct qib_ibdev *dev = FUNC4(pd->ibpd.device);

		if (pd->user)
			goto bail;
		mr = FUNC1(dev->dma_mr);
		if (!mr)
			goto bail;
		if (FUNC5(!FUNC0(&mr->refcount)))
			goto bail;
		FUNC3();

		isge->mr = mr;
		isge->vaddr = (void *) sge->addr;
		isge->length = sge->length;
		isge->sge_length = sge->length;
		isge->m = 0;
		isge->n = 0;
		goto ok;
	}
	mr = FUNC1(
		rkt->table[(sge->lkey >> (32 - ib_qib_lkey_table_size))]);
	if (FUNC5(!mr || mr->lkey != sge->lkey || mr->pd != &pd->ibpd))
		goto bail;

	off = sge->addr - mr->user_base;
	if (FUNC5(sge->addr < mr->user_base ||
		     off + sge->length > mr->length ||
		     (mr->access_flags & acc) != acc))
		goto bail;
	if (FUNC5(!FUNC0(&mr->refcount)))
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
	isge->mr = mr;
	isge->vaddr = mr->map[m]->segs[n].vaddr + off;
	isge->length = mr->map[m]->segs[n].length - off;
	isge->sge_length = sge->length;
	isge->m = m;
	isge->n = n;
ok:
	return 1;
bail:
	FUNC3();
	return 0;
}