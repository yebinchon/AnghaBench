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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sclp_con_lock ; 
 scalar_t__ sclp_con_queue_running ; 
 int /*<<< orphan*/  sclp_con_timer ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(void)
{
	unsigned long flags;

	FUNC2(&sclp_con_lock, flags);
	if (FUNC4(&sclp_con_timer))
		FUNC0(&sclp_con_timer);
	while (sclp_con_queue_running) {
		FUNC3(&sclp_con_lock, flags);
		FUNC1();
		FUNC2(&sclp_con_lock, flags);
	}
	FUNC3(&sclp_con_lock, flags);
}