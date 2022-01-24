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
struct bnx2x_prev_path_list {int undi; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct bnx2x*) ; 
 struct bnx2x_prev_path_list* FUNC1 (struct bnx2x*) ; 
 int /*<<< orphan*/  bnx2x_prev_sem ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

bool FUNC4(struct bnx2x *bp)
{
	struct bnx2x_prev_path_list *entry;
	bool val;

	FUNC2(&bnx2x_prev_sem);

	entry = FUNC1(bp);
	val = !!(entry && (entry->undi & (1 << FUNC0(bp))));

	FUNC3(&bnx2x_prev_sem);

	return val;
}