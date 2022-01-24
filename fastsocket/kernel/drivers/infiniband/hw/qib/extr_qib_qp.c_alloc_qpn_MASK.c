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
typedef  int u8 ;
typedef  int u32 ;
struct qpn_map {int /*<<< orphan*/  page; } ;
struct qib_qpn_table {unsigned int flags; int last; int mask; int nmaps; struct qpn_map* map; int /*<<< orphan*/  lock; } ;
struct qib_devdata {int n_krcv_queues; } ;
typedef  enum ib_qp_type { ____Placeholder_ib_qp_type } ib_qp_type ;

/* Variables and functions */
 int BITS_PER_PAGE ; 
 int BITS_PER_PAGE_MASK ; 
 int EINVAL ; 
 int ENOMEM ; 
 int IB_QPT_GSI ; 
 int IB_QPT_SMI ; 
 int QPNMAP_ENTRIES ; 
 int QPN_MAX ; 
 int FUNC0 (struct qib_qpn_table*,struct qpn_map*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct qib_qpn_table*,struct qpn_map*) ; 
 int FUNC2 (struct qib_qpn_table*,struct qpn_map*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct qib_devdata *dd, struct qib_qpn_table *qpt,
		     enum ib_qp_type type, u8 port)
{
	u32 i, offset, max_scan, qpn;
	struct qpn_map *map;
	u32 ret;

	if (type == IB_QPT_SMI || type == IB_QPT_GSI) {
		unsigned n;

		ret = type == IB_QPT_GSI;
		n = 1 << (ret + 2 * (port - 1));
		FUNC3(&qpt->lock);
		if (qpt->flags & n)
			ret = -EINVAL;
		else
			qpt->flags |= n;
		FUNC4(&qpt->lock);
		goto bail;
	}

	qpn = qpt->last + 2;
	if (qpn >= QPN_MAX)
		qpn = 2;
	if (qpt->mask && ((qpn & qpt->mask) >> 1) >= dd->n_krcv_queues)
		qpn = (qpn | qpt->mask) + 2;
	offset = qpn & BITS_PER_PAGE_MASK;
	map = &qpt->map[qpn / BITS_PER_PAGE];
	max_scan = qpt->nmaps - !offset;
	for (i = 0;;) {
		if (FUNC6(!map->page)) {
			FUNC1(qpt, map);
			if (FUNC6(!map->page))
				break;
		}
		do {
			if (!FUNC5(offset, map->page)) {
				qpt->last = qpn;
				ret = qpn;
				goto bail;
			}
			offset = FUNC0(qpt, map, offset,
				dd->n_krcv_queues);
			qpn = FUNC2(qpt, map, offset);
			/*
			 * This test differs from alloc_pidmap().
			 * If find_next_offset() does find a zero
			 * bit, we don't need to check for QPN
			 * wrapping around past our starting QPN.
			 * We just need to be sure we don't loop
			 * forever.
			 */
		} while (offset < BITS_PER_PAGE && qpn < QPN_MAX);
		/*
		 * In order to keep the number of pages allocated to a
		 * minimum, we scan the all existing pages before increasing
		 * the size of the bitmap table.
		 */
		if (++i > max_scan) {
			if (qpt->nmaps == QPNMAP_ENTRIES)
				break;
			map = &qpt->map[qpt->nmaps++];
			offset = 0;
		} else if (map < &qpt->map[qpt->nmaps]) {
			++map;
			offset = 0;
		} else {
			map = &qpt->map[0];
			offset = 2;
		}
		qpn = FUNC2(qpt, map, offset);
	}

	ret = -ENOMEM;

bail:
	return ret;
}