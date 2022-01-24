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
struct raw3215_info {int flags; int /*<<< orphan*/  cdev; int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 int RAW3215_FROZEN ; 
 int RAW3215_TIMER_RUNS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct raw3215_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct raw3215_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC6(unsigned long __data)
{
	struct raw3215_info *raw = (struct raw3215_info *) __data;
	unsigned long flags;

	FUNC4(FUNC1(raw->cdev), flags);
	if (raw->flags & RAW3215_TIMER_RUNS) {
		FUNC0(&raw->timer);
		raw->flags &= ~RAW3215_TIMER_RUNS;
		if (!(raw->flags & RAW3215_FROZEN)) {
			FUNC2(raw);
			FUNC3(raw);
		}
	}
	FUNC5(FUNC1(raw->cdev), flags);
}