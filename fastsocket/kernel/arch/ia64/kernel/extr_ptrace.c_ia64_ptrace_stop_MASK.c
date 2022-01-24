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

/* Variables and functions */
 int /*<<< orphan*/  TIF_RESTORE_RSE ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  do_sync_rbs ; 
 int /*<<< orphan*/  ia64_sync_user_rbs ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(void)
{
	if (FUNC1(current, TIF_RESTORE_RSE))
		return;
	FUNC0(current);
	FUNC2(do_sync_rbs, ia64_sync_user_rbs);
}