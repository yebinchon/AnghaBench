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
typedef  unsigned long u64 ;
struct throtl_grp {unsigned long* slice_start; unsigned long* bps; unsigned long* iops; unsigned long* bytes_disp; unsigned long* io_disp; int /*<<< orphan*/ * slice_end; } ;
struct throtl_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long HZ ; 
 int READ ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned long) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC2 (struct throtl_data*,struct throtl_grp*,char*,char,unsigned long,unsigned long,unsigned long,unsigned long,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct throtl_data*,struct throtl_grp*,int,unsigned long) ; 
 unsigned long throtl_slice ; 
 scalar_t__ FUNC4 (struct throtl_data*,struct throtl_grp*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static inline void
FUNC6(struct throtl_data *td, struct throtl_grp *tg, bool rw)
{
	unsigned long nr_slices, time_elapsed, io_trim;
	u64 bytes_trim, tmp;

	FUNC0(FUNC5(tg->slice_end[rw], tg->slice_start[rw]));

	/*
	 * If bps are unlimited (-1), then time slice don't get
	 * renewed. Don't try to trim the slice if slice is used. A new
	 * slice will start when appropriate.
	 */
	if (FUNC4(td, tg, rw))
		return;

	/*
	 * A bio has been dispatched. Also adjust slice_end. It might happen
	 * that initially cgroup limit was very low resulting in high
	 * slice_end, but later limit was bumped up and bio was dispached
	 * sooner, then we need to reduce slice_end. A high bogus slice_end
	 * is bad because it does not allow new slice to start.
	 */

	FUNC3(td, tg, rw, jiffies + throtl_slice);

	time_elapsed = jiffies - tg->slice_start[rw];

	nr_slices = time_elapsed / throtl_slice;

	if (!nr_slices)
		return;
	tmp = tg->bps[rw] * throtl_slice * nr_slices;
	FUNC1(tmp, HZ);
	bytes_trim = tmp;

	io_trim = (tg->iops[rw] * throtl_slice * nr_slices)/HZ;

	if (!bytes_trim && !io_trim)
		return;

	if (tg->bytes_disp[rw] >= bytes_trim)
		tg->bytes_disp[rw] -= bytes_trim;
	else
		tg->bytes_disp[rw] = 0;

	if (tg->io_disp[rw] >= io_trim)
		tg->io_disp[rw] -= io_trim;
	else
		tg->io_disp[rw] = 0;

	tg->slice_start[rw] += nr_slices * throtl_slice;

	FUNC2(td, tg, "[%c] trim slice nr=%lu bytes=%llu io=%lu"
			" start=%lu end=%lu jiffies=%lu",
			rw == READ ? 'R' : 'W', nr_slices, bytes_trim, io_trim,
			tg->slice_start[rw], tg->slice_end[rw], jiffies);
}