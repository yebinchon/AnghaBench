#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  pid; TYPE_2__* signal; } ;
struct TYPE_7__ {TYPE_1__* rlim; } ;
struct TYPE_6__ {int rlim_cur; } ;

/* Variables and functions */
 int /*<<< orphan*/  BINDER_DEBUG_PRIORITY_CAP ; 
 size_t RLIMIT_NICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,long,long) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_3__*,long) ; 
 TYPE_3__* current ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,long) ; 

__attribute__((used)) static void FUNC4(long nice)
{
	long min_nice;
	if (FUNC2(current, nice)) {
		FUNC3(current, nice);
		return;
	}
	min_nice = 20 - current->signal->rlim[RLIMIT_NICE].rlim_cur;
	FUNC0(BINDER_DEBUG_PRIORITY_CAP,
		     "binder: %d: nice value %ld not allowed use "
		     "%ld instead\n", current->pid, nice, min_nice);
	FUNC3(current, min_nice);
	if (min_nice < 20)
		return;
	FUNC1("binder: %d RLIMIT_NICE not set\n", current->pid);
}