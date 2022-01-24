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
typedef  size_t u32 ;
struct ipath_mregion {size_t lkey; } ;
struct ipath_lkey_table {size_t next; int max; int gen; int /*<<< orphan*/  lock; struct ipath_mregion** table; } ;

/* Variables and functions */
 int ib_ipath_lkey_table_size ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC3(struct ipath_lkey_table *rkt, struct ipath_mregion *mr)
{
	unsigned long flags;
	u32 r;
	u32 n;
	int ret;

	FUNC1(&rkt->lock, flags);

	/* Find the next available LKEY */
	r = n = rkt->next;
	for (;;) {
		if (rkt->table[r] == NULL)
			break;
		r = (r + 1) & (rkt->max - 1);
		if (r == n) {
			FUNC2(&rkt->lock, flags);
			FUNC0("LKEY table full\n");
			ret = 0;
			goto bail;
		}
	}
	rkt->next = (r + 1) & (rkt->max - 1);
	/*
	 * Make sure lkey is never zero which is reserved to indicate an
	 * unrestricted LKEY.
	 */
	rkt->gen++;
	mr->lkey = (r << (32 - ib_ipath_lkey_table_size)) |
		((((1 << (24 - ib_ipath_lkey_table_size)) - 1) & rkt->gen)
		 << 8);
	if (mr->lkey == 0) {
		mr->lkey |= 1 << 8;
		rkt->gen++;
	}
	rkt->table[r] = mr;
	FUNC2(&rkt->lock, flags);

	ret = 1;

bail:
	return ret;
}