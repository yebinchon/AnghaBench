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
struct gameport {int /*<<< orphan*/  timer_lock; int /*<<< orphan*/  poll_interval; int /*<<< orphan*/  poll_timer; int /*<<< orphan*/  poll_handler; int /*<<< orphan*/  poll_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct gameport *gameport)
{
	FUNC3(&gameport->timer_lock);

	if (!gameport->poll_cnt++) {
		FUNC0(!gameport->poll_handler);
		FUNC0(!gameport->poll_interval);
		FUNC1(&gameport->poll_timer, jiffies + FUNC2(gameport->poll_interval));
	}

	FUNC4(&gameport->timer_lock);
}