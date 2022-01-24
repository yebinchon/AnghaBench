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
 TYPE_1__* FDCS ; 
 int FD_RESET_ALWAYS ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * cont ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  reset_cont ; 
 int /*<<< orphan*/  reset_fdc ; 

__attribute__((used)) static int FUNC3(int drive, int arg, int interruptible)
{
	int ret;

	ret = 0;
	FUNC0(drive, interruptible);
	if (arg == FD_RESET_ALWAYS)
		FDCS->reset = 1;
	if (FDCS->reset) {
		cont = &reset_cont;
		FUNC1(reset_fdc);
	}
	FUNC2();
	return ret;
}