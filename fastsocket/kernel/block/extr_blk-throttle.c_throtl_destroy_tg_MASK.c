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
struct throtl_grp {int /*<<< orphan*/  tg_node; } ;
struct throtl_data {int /*<<< orphan*/  nr_undestroyed_grps; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct throtl_grp*) ; 

__attribute__((used)) static void
FUNC4(struct throtl_data *td, struct throtl_grp *tg)
{
	/* Something wrong if we are trying to remove same group twice */
	FUNC0(FUNC2(&tg->tg_node));

	FUNC1(&tg->tg_node);

	/*
	 * Put the reference taken at the time of creation so that when all
	 * queues are gone, group can be destroyed.
	 */
	FUNC3(tg);
	td->nr_undestroyed_grps--;
}