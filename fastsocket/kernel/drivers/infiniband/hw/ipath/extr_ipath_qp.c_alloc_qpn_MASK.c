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
typedef  int u32 ;
struct qpn_map {int /*<<< orphan*/  n_free; int /*<<< orphan*/  page; } ;
struct ipath_qp_table {int last; int nmaps; struct qpn_map* map; } ;
typedef  enum ib_qp_type { ____Placeholder_ib_qp_type } ib_qp_type ;

/* Variables and functions */
 int BITS_PER_PAGE ; 
 int BITS_PER_PAGE_MASK ; 
 int EBUSY ; 
 int ENOMEM ; 
 int IB_QPT_GSI ; 
 int IB_QPT_SMI ; 
 int QPNMAP_ENTRIES ; 
 int QPN_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct qpn_map*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ipath_qp_table*,struct qpn_map*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ipath_qp_table*,struct qpn_map*,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct ipath_qp_table *qpt, enum ib_qp_type type)
{
	u32 i, offset, max_scan, qpn;
	struct qpn_map *map;
	u32 ret = -1;

	if (type == IB_QPT_SMI)
		ret = 0;
	else if (type == IB_QPT_GSI)
		ret = 1;

	if (ret != -1) {
		map = &qpt->map[0];
		if (FUNC7(!map->page)) {
			FUNC3(qpt, map);
			if (FUNC7(!map->page)) {
				ret = -ENOMEM;
				goto bail;
			}
		}
		if (!FUNC6(ret, map->page))
			FUNC0(&map->n_free);
		else
			ret = -EBUSY;
		goto bail;
	}

	qpn = qpt->last + 1;
	if (qpn >= QPN_MAX)
		qpn = 2;
	offset = qpn & BITS_PER_PAGE_MASK;
	map = &qpt->map[qpn / BITS_PER_PAGE];
	max_scan = qpt->nmaps - !offset;
	for (i = 0;;) {
		if (FUNC7(!map->page)) {
			FUNC3(qpt, map);
			if (FUNC7(!map->page))
				break;
		}
		if (FUNC4(FUNC1(&map->n_free))) {
			do {
				if (!FUNC6(offset, map->page)) {
					FUNC0(&map->n_free);
					qpt->last = qpn;
					ret = qpn;
					goto bail;
				}
				offset = FUNC2(map, offset);
				qpn = FUNC5(qpt, map, offset);
				/*
				 * This test differs from alloc_pidmap().
				 * If find_next_offset() does find a zero
				 * bit, we don't need to check for QPN
				 * wrapping around past our starting QPN.
				 * We just need to be sure we don't loop
				 * forever.
				 */
			} while (offset < BITS_PER_PAGE && qpn < QPN_MAX);
		}
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
		qpn = FUNC5(qpt, map, offset);
	}

	ret = -ENOMEM;

bail:
	return ret;
}