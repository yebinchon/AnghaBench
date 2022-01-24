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
struct spufs_calls {int (* coredump_extra_notes_size ) () ;} ;

/* Variables and functions */
 struct spufs_calls* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct spufs_calls*) ; 
 int FUNC2 () ; 

int FUNC3(void)
{
	struct spufs_calls *calls;
	int ret;

	calls = FUNC0();
	if (!calls)
		return 0;

	ret = calls->coredump_extra_notes_size();

	FUNC1(calls);

	return ret;
}