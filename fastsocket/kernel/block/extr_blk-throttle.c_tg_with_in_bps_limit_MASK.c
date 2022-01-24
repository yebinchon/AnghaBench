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
typedef  int u64 ;
struct throtl_grp {unsigned long* slice_start; unsigned long* bps; int* bytes_disp; } ;
struct throtl_data {int dummy; } ;
struct bio {int bi_size; } ;

/* Variables and functions */
 int HZ ; 
 int FUNC0 (struct bio*) ; 
 unsigned long FUNC1 (int,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 unsigned long jiffies ; 
 unsigned long FUNC3 (unsigned long,unsigned long) ; 
 unsigned long throtl_slice ; 

__attribute__((used)) static bool FUNC4(struct throtl_data *td, struct throtl_grp *tg,
		struct bio *bio, unsigned long *wait)
{
	bool rw = FUNC0(bio);
	u64 bytes_allowed, extra_bytes, tmp;
	unsigned long jiffy_elapsed, jiffy_wait, jiffy_elapsed_rnd;

	jiffy_elapsed = jiffy_elapsed_rnd = jiffies - tg->slice_start[rw];

	/* Slice has just started. Consider one slice interval */
	if (!jiffy_elapsed)
		jiffy_elapsed_rnd = throtl_slice;

	jiffy_elapsed_rnd = FUNC3(jiffy_elapsed_rnd, throtl_slice);

	tmp = tg->bps[rw] * jiffy_elapsed_rnd;
	FUNC2(tmp, HZ);
	bytes_allowed = tmp;

	if (tg->bytes_disp[rw] + bio->bi_size <= bytes_allowed) {
		if (wait)
			*wait = 0;
		return 1;
	}

	/* Calc approx time to dispatch */
	extra_bytes = tg->bytes_disp[rw] + bio->bi_size - bytes_allowed;
	jiffy_wait = FUNC1(extra_bytes * HZ, tg->bps[rw]);

	if (!jiffy_wait)
		jiffy_wait = 1;

	/*
	 * This wait time is without taking into consideration the rounding
	 * up we did. Add that time also.
	 */
	jiffy_wait = jiffy_wait + (jiffy_elapsed_rnd - jiffy_elapsed);
	if (wait)
		*wait = jiffy_wait;
	return 0;
}