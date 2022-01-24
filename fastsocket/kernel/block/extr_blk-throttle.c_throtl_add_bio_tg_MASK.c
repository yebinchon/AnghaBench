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
struct throtl_data {int /*<<< orphan*/ * nr_queued; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct throtl_data*,struct throtl_grp*) ; 
 int /*<<< orphan*/  FUNC3 (struct throtl_grp*) ; 

__attribute__((used)) static void FUNC4(struct throtl_data *td, struct throtl_grp *tg,
			struct bio *bio)
{
	bool rw = FUNC0(bio);

	FUNC1(&tg->bio_lists[rw], bio);
	/* Take a bio reference on tg */
	FUNC3(tg);
	tg->nr_queued[rw]++;
	td->nr_queued[rw]++;
	FUNC2(td, tg);
}