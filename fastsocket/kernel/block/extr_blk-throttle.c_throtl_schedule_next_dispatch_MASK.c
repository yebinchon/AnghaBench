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
struct throtl_rb_root {scalar_t__ min_disptime; int /*<<< orphan*/  count; } ;
struct throtl_data {struct throtl_rb_root tg_service_tree; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (struct throtl_data*,scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct throtl_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct throtl_rb_root*) ; 

__attribute__((used)) static void FUNC5(struct throtl_data *td)
{
	struct throtl_rb_root *st = &td->tg_service_tree;

	/*
	 * If there are more bios pending, schedule more work.
	 */
	if (!FUNC3(td))
		return;

	FUNC0(!st->count);

	FUNC4(st);

	if (FUNC2(st->min_disptime, jiffies))
		FUNC1(td, 0);
	else
		FUNC1(td, (st->min_disptime - jiffies));
}