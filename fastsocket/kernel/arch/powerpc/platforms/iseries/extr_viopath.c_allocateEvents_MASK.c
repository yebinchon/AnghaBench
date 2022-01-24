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
struct alloc_parms {int used_wait_atomic; int number; int /*<<< orphan*/  done; int /*<<< orphan*/  wait_atomic; } ;
typedef  int /*<<< orphan*/  HvLpIndex ;

/* Variables and functions */
 int /*<<< orphan*/  HvLpEvent_Type_VirtualIo ; 
 scalar_t__ SYSTEM_RUNNING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,struct alloc_parms*) ; 
 scalar_t__ system_state ; 
 int /*<<< orphan*/  viopath_donealloc ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(HvLpIndex remoteLp, int numEvents)
{
	struct alloc_parms parms;

	if (system_state != SYSTEM_RUNNING) {
		parms.used_wait_atomic = 1;
		FUNC1(&parms.wait_atomic, 1);
	} else {
		parms.used_wait_atomic = 0;
		FUNC2(&parms.done);
	}
	FUNC4(remoteLp, HvLpEvent_Type_VirtualIo, 250,	/* It would be nice to put a real number here! */
			    numEvents, &viopath_donealloc, &parms);
	if (system_state != SYSTEM_RUNNING) {
		while (FUNC0(&parms.wait_atomic))
			FUNC3();
	} else
		FUNC5(&parms.done);
	return parms.number;
}