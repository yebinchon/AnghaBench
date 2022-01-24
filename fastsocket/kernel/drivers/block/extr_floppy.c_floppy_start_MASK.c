#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 TYPE_1__* DP ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FD_DEBUG ; 
 int /*<<< orphan*/  FD_DISK_NEWCHANGE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current_reqD ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(void)
{
	FUNC3(current_reqD, "floppy start", 0);

	FUNC4();
#ifdef DCL_DEBUG
	if (DP->flags & FD_DEBUG) {
		DPRINT("setting NEWCHANGE in floppy_start\n");
	}
#endif
	FUNC1(FD_DISK_NEWCHANGE);
	FUNC2();
}