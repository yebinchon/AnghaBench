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
struct TYPE_2__ {int rawcmd; int reset; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 TYPE_1__* FDCS ; 
 int /*<<< orphan*/  FD_STATUS ; 
 int N_DRIVE ; 
 scalar_t__ STATUS_READY ; 
 int current_drive ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int fdc ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int) ; 

__attribute__((used)) static void FUNC5(int drive)
{
	if (drive >= 0 && drive < N_DRIVE) {
		fdc = FUNC0(drive);
		current_drive = drive;
	}
	if (fdc != 1 && fdc != 0) {
		FUNC2("bad fdc value\n");
		return;
	}
	FUNC4(fdc, ~0, 8);
#if N_FDC > 1
	set_dor(1 - fdc, ~8, 0);
#endif
	if (FDCS->rawcmd == 2)
		FUNC3(1);
	if (FUNC1(FD_STATUS) != STATUS_READY)
		FDCS->reset = 1;
}