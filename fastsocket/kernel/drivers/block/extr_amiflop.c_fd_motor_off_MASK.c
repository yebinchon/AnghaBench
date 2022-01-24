#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ expires; } ;
struct TYPE_4__ {scalar_t__ motor; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 scalar_t__ jiffies ; 
 TYPE_2__* motor_off_timer ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 TYPE_1__* unit ; 

__attribute__((used)) static void FUNC5(unsigned long drive)
{
	long calledfromint;
#ifdef MODULE
	long decusecount;

	decusecount = drive & 0x40000000;
#endif
	calledfromint = drive & 0x80000000;
	drive&=3;
	if (calledfromint && !FUNC3(drive)) {
		/* We would be blocked in an interrupt, so try again later */
		motor_off_timer[drive].expires = jiffies + 1;
		FUNC0(motor_off_timer + drive);
		return;
	}
	unit[drive].motor = 0;
	FUNC2(drive);
	FUNC4 (1);
	FUNC1(drive);
}