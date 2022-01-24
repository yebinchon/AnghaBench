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
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int HZ ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int* recovery_delay ; 
 int /*<<< orphan*/  recovery_lock ; 
 scalar_t__ recovery_phase ; 
 int /*<<< orphan*/  recovery_timer ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(void)
{
	unsigned long flags;

	FUNC0(4, "recovery: schedule\n");
	FUNC2(&recovery_lock, flags);
	if (!FUNC4(&recovery_timer) || (recovery_phase != 0)) {
		recovery_phase = 0;
		FUNC1(&recovery_timer, jiffies + recovery_delay[0] * HZ);
	}
	FUNC3(&recovery_lock, flags);
}