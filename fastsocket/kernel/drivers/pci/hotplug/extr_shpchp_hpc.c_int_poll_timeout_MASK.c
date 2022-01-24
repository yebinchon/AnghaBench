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
struct controller {int /*<<< orphan*/  poll_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct controller*) ; 
 int shpchp_poll_time ; 
 int /*<<< orphan*/  FUNC2 (struct controller*,int) ; 

__attribute__((used)) static void FUNC3(unsigned long data)
{
	struct controller *ctrl = (struct controller *)data;

	/* Poll for interrupt events.  regs == NULL => polling */
	FUNC1(0, ctrl);

	FUNC0(&ctrl->poll_timer);
	if (!shpchp_poll_time)
		shpchp_poll_time = 2; /* default polling interval is 2 sec */

	FUNC2(ctrl, shpchp_poll_time);
}