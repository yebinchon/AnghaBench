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
typedef  int /*<<< orphan*/  u64 ;
struct badblocks {int shift; int count; int changed; int /*<<< orphan*/  lock; int /*<<< orphan*/ * page; } ;
typedef  int sector_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int MD_MAX_BADBLOCKS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct badblocks *bb, sector_t s, int sectors)
{
	u64 *p;
	int lo, hi;
	sector_t target = s + sectors;
	int rv = 0;

	if (bb->shift > 0) {
		/* When clearing we round the start up and the end down.
		 * This should not matter as the shift should align with
		 * the block size and no rounding should ever be needed.
		 * However it is better the think a block is bad when it
		 * isn't than to think a block is not bad when it is.
		 */
		s += (1<<bb->shift) - 1;
		s >>= bb->shift;
		target >>= bb->shift;
		sectors = target - s;
	}

	FUNC5(&bb->lock);

	p = bb->page;
	lo = 0;
	hi = bb->count;
	/* Find the last range that starts before 'target' */
	while (hi - lo > 1) {
		int mid = (lo + hi) / 2;
		sector_t a = FUNC3(p[mid]);
		if (a < target)
			lo = mid;
		else
			hi = mid;
	}
	if (hi > lo) {
		/* p[lo] is the last range that could overlap the
		 * current range.  Earlier ranges could also overlap,
		 * but only this one can overlap the end of the range.
		 */
		if (FUNC3(p[lo]) + FUNC1(p[lo]) > target) {
			/* Partial overlap, leave the tail of this range */
			int ack = FUNC0(p[lo]);
			sector_t a = FUNC3(p[lo]);
			sector_t end = a + FUNC1(p[lo]);

			if (a < s) {
				/* we need to split this range */
				if (bb->count >= MD_MAX_BADBLOCKS) {
					rv = 0;
					goto out;
				}
				FUNC4(p+lo+1, p+lo, (bb->count - lo) * 8);
				bb->count++;
				p[lo] = FUNC2(a, s-a, ack);
				lo++;
			}
			p[lo] = FUNC2(target, end - target, ack);
			/* there is no longer an overlap */
			hi = lo;
			lo--;
		}
		while (lo >= 0 &&
		       FUNC3(p[lo]) + FUNC1(p[lo]) > s) {
			/* This range does overlap */
			if (FUNC3(p[lo]) < s) {
				/* Keep the early parts of this range. */
				int ack = FUNC0(p[lo]);
				sector_t start = FUNC3(p[lo]);
				p[lo] = FUNC2(start, s - start, ack);
				/* now low doesn't overlap, so.. */
				break;
			}
			lo--;
		}
		/* 'lo' is strictly before, 'hi' is strictly after,
		 * anything between needs to be discarded
		 */
		if (hi - lo > 1) {
			FUNC4(p+lo+1, p+hi, (bb->count - hi) * 8);
			bb->count -= (hi - lo - 1);
		}
	}

	bb->changed = 1;
out:
	FUNC6(&bb->lock);
	return rv;
}