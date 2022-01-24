#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ timeout_fn ;
struct TYPE_8__ {int flags; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* done ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_6__ {scalar_t__ expires; scalar_t__ function; } ;

/* Variables and functions */
 TYPE_5__* DP ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FD_DEBUG ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_3__* cont ; 
 int /*<<< orphan*/  current_drive ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__ fd_timer ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(void)
{
#ifdef DCL_DEBUG
	if (DP->flags & FD_DEBUG) {
		DPRINT("calling disk change from watchdog\n");
	}
#endif

	if (FUNC4(current_drive)) {
		FUNC0("disk removed during i/o\n");
		FUNC2();
		cont->done(0);
		FUNC5();
	} else {
		FUNC3(&fd_timer);
		fd_timer.function = (timeout_fn) fd_watchdog;
		fd_timer.expires = jiffies + HZ / 10;
		FUNC1(&fd_timer);
	}
}