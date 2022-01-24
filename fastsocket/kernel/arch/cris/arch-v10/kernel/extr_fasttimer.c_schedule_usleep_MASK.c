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
typedef  int /*<<< orphan*/  wait_queue_head_t ;
struct fast_timer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fast_timer*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct fast_timer*,int /*<<< orphan*/ ,unsigned long,unsigned long,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  wake_up_func ; 

void FUNC6(unsigned long us)
{
  struct fast_timer t;
  wait_queue_head_t sleep_wait;
  FUNC2(&sleep_wait);

  FUNC0(FUNC3("schedule_usleep(%d)\n", us));
  FUNC4(&t, wake_up_func, (unsigned long)&sleep_wait, us,
                       "usleep");
	/* Uninterruptible sleep on the fast timer. (The condition is somewhat
	 * redundant since the timer is what wakes us up.) */
	FUNC5(sleep_wait, !FUNC1(&t));

  FUNC0(FUNC3("done schedule_usleep(%d)\n", us));
}