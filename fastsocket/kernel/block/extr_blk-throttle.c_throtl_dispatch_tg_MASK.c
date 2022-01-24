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
struct throtl_grp {int /*<<< orphan*/ * bio_lists; } ;
struct throtl_data {int dummy; } ;
struct bio_list {int dummy; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 size_t READ ; 
 size_t WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct bio*) ; 
 struct bio* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct throtl_data*,struct throtl_grp*,int /*<<< orphan*/ ,struct bio_list*) ; 
 scalar_t__ FUNC3 (struct throtl_data*,struct throtl_grp*,struct bio*,int /*<<< orphan*/ *) ; 
 int throtl_grp_quantum ; 

__attribute__((used)) static int FUNC4(struct throtl_data *td, struct throtl_grp *tg,
				struct bio_list *bl)
{
	unsigned int nr_reads = 0, nr_writes = 0;
	unsigned int max_nr_reads = throtl_grp_quantum*3/4;
	unsigned int max_nr_writes = throtl_grp_quantum - nr_reads;
	struct bio *bio;

	/* Try to dispatch 75% READS and 25% WRITES */

	while ((bio = FUNC1(&tg->bio_lists[READ]))
		&& FUNC3(td, tg, bio, NULL)) {

		FUNC2(td, tg, FUNC0(bio), bl);
		nr_reads++;

		if (nr_reads >= max_nr_reads)
			break;
	}

	while ((bio = FUNC1(&tg->bio_lists[WRITE]))
		&& FUNC3(td, tg, bio, NULL)) {

		FUNC2(td, tg, FUNC0(bio), bl);
		nr_writes++;

		if (nr_writes >= max_nr_writes)
			break;
	}

	return nr_reads + nr_writes;
}