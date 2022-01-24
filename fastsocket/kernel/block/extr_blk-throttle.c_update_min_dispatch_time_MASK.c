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
struct throtl_rb_root {int /*<<< orphan*/  min_disptime; } ;
struct throtl_grp {int /*<<< orphan*/  disptime; } ;

/* Variables and functions */
 struct throtl_grp* FUNC0 (struct throtl_rb_root*) ; 

__attribute__((used)) static void FUNC1(struct throtl_rb_root *st)
{
	struct throtl_grp *tg;

	tg = FUNC0(st);
	if (!tg)
		return;

	st->min_disptime = tg->disptime;
}