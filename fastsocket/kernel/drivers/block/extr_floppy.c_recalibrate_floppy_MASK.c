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
 int /*<<< orphan*/  FD_RECALIBRATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current_drive ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  do_floppy ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  recal_interrupt ; 

__attribute__((used)) static void FUNC4(void)
{
	FUNC2("recalibrate floppy:");
	do_floppy = recal_interrupt;
	FUNC3(FD_RECALIBRATE);
	FUNC0(FUNC1(current_drive));
}