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
struct throtl_grp {unsigned long disptime; int /*<<< orphan*/ * bio_lists; } ;
struct throtl_data {int dummy; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 size_t READ ; 
 size_t WRITE ; 
 struct bio* FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned long jiffies ; 
 unsigned long FUNC1 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct throtl_data*,struct throtl_grp*,struct bio*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (struct throtl_data*,struct throtl_grp*) ; 
 int /*<<< orphan*/  FUNC4 (struct throtl_data*,struct throtl_grp*) ; 

__attribute__((used)) static void FUNC5(struct throtl_data *td, struct throtl_grp *tg)
{
	unsigned long read_wait = -1, write_wait = -1, min_wait = -1, disptime;
	struct bio *bio;

	if ((bio = FUNC0(&tg->bio_lists[READ])))
		FUNC2(td, tg, bio, &read_wait);

	if ((bio = FUNC0(&tg->bio_lists[WRITE])))
		FUNC2(td, tg, bio, &write_wait);

	min_wait = FUNC1(read_wait, write_wait);
	disptime = jiffies + min_wait;

	/* Update dispatch time */
	FUNC3(td, tg);
	tg->disptime = disptime;
	FUNC4(td, tg);
}