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
struct throtl_grp {int /*<<< orphan*/ * nr_queued; int /*<<< orphan*/ * bio_lists; } ;
struct throtl_data {scalar_t__* nr_queued; } ;
struct bio_list {int dummy; } ;
struct bio {int bi_rw; } ;

/* Variables and functions */
 int BIO_RW_THROTTLED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct bio_list*,struct bio*) ; 
 struct bio* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct throtl_grp*,struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (struct throtl_grp*) ; 
 int /*<<< orphan*/  FUNC5 (struct throtl_data*,struct throtl_grp*,int) ; 

__attribute__((used)) static void FUNC6(struct throtl_data *td, struct throtl_grp *tg,
				bool rw, struct bio_list *bl)
{
	struct bio *bio;

	bio = FUNC2(&tg->bio_lists[rw]);
	tg->nr_queued[rw]--;
	/* Drop bio reference on tg */
	FUNC4(tg);

	FUNC0(td->nr_queued[rw] <= 0);
	td->nr_queued[rw]--;

	FUNC3(tg, bio);
	FUNC1(bl, bio);
	bio->bi_rw |= (1 << BIO_RW_THROTTLED);

	FUNC5(td, tg, rw);
}