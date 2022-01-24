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
struct spufs_calls {int /*<<< orphan*/  (* notify_spus_active ) () ;} ;

/* Variables and functions */
 struct spufs_calls* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct spufs_calls*) ; 
 int /*<<< orphan*/  FUNC2 () ; 

void FUNC3(void)
{
	struct spufs_calls *calls;

	calls = FUNC0();
	if (!calls)
		return;

	calls->notify_spus_active();
	FUNC1(calls);

	return;
}