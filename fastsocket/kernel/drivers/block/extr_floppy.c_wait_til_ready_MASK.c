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
struct TYPE_2__ {int reset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FDCS ; 
 int /*<<< orphan*/  FD_STATUS ; 
 int STATUS_READY ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fdc ; 
 int /*<<< orphan*/  initialising ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static int FUNC3(void)
{
	int status;
	int counter;

	if (FDCS->reset)
		return -1;
	for (counter = 0; counter < 10000; counter++) {
		status = FUNC1(FD_STATUS);
		if (status & STATUS_READY)
			return status;
	}
	if (!initialising) {
		FUNC0("Getstatus times out (%x) on fdc %d\n", status, fdc);
		FUNC2();
	}
	FDCS->reset = 1;
	return -1;
}