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
struct cas {scalar_t__ lstate; int /*<<< orphan*/  dev; scalar_t__ timer_ticks; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cas*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct cas*) ; 
 int /*<<< orphan*/  FUNC2 (struct cas*) ; 
 int /*<<< orphan*/  FUNC3 (struct cas*) ; 
 int /*<<< orphan*/  FUNC4 (struct cas*) ; 
 int /*<<< orphan*/  FUNC5 (struct cas*) ; 
 scalar_t__ link_up ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct cas *cp, int restart_link)
{
	if (restart_link)
		FUNC4(cp);

	FUNC3(cp);
	FUNC2(cp);
	FUNC1(cp);

	if (restart_link) {
		/* Default aneg parameters */
		cp->timer_ticks = 0;
		FUNC0(cp, NULL);
	} else if (cp->lstate == link_up) {
		FUNC5(cp);
		FUNC6(cp->dev);
	}
}