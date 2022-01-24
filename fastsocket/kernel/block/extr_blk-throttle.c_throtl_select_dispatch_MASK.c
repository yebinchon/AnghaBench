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
struct throtl_rb_root {int dummy; } ;
struct throtl_grp {scalar_t__* nr_queued; int /*<<< orphan*/  disptime; } ;
struct throtl_data {struct throtl_rb_root tg_service_tree; } ;
struct bio_list {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC0 (struct throtl_data*,struct throtl_grp*) ; 
 int /*<<< orphan*/  FUNC1 (struct throtl_data*,struct throtl_grp*) ; 
 scalar_t__ FUNC2 (struct throtl_data*,struct throtl_grp*,struct bio_list*) ; 
 int /*<<< orphan*/  FUNC3 (struct throtl_data*,struct throtl_grp*) ; 
 unsigned int throtl_quantum ; 
 struct throtl_grp* FUNC4 (struct throtl_rb_root*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct throtl_data *td, struct bio_list *bl)
{
	unsigned int nr_disp = 0;
	struct throtl_grp *tg;
	struct throtl_rb_root *st = &td->tg_service_tree;

	while (1) {
		tg = FUNC4(st);

		if (!tg)
			break;

		if (FUNC5(jiffies, tg->disptime))
			break;

		FUNC1(td, tg);

		nr_disp += FUNC2(td, tg, bl);

		if (tg->nr_queued[0] || tg->nr_queued[1]) {
			FUNC0(td, tg);
			FUNC3(td, tg);
		}

		if (nr_disp >= throtl_quantum)
			break;
	}

	return nr_disp;
}