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
struct gameport {int /*<<< orphan*/  (* close ) (struct gameport*) ;scalar_t__ poll_interval; int /*<<< orphan*/ * poll_handler; int /*<<< orphan*/  poll_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct gameport*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct gameport*) ; 

void FUNC3(struct gameport *gameport)
{
	FUNC0(&gameport->poll_timer);
	gameport->poll_handler = NULL;
	gameport->poll_interval = 0;
	FUNC1(gameport, NULL);
	if (gameport->close)
		gameport->close(gameport);
}