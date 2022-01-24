#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct gameport {struct gameport* child; TYPE_1__* drv; } ;
struct TYPE_2__ {scalar_t__ (* reconnect ) (struct gameport*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gameport*) ; 
 int /*<<< orphan*/  FUNC1 (struct gameport*) ; 
 scalar_t__ FUNC2 (struct gameport*) ; 

__attribute__((used)) static void FUNC3(struct gameport *gameport)
{
	do {
		if (!gameport->drv || !gameport->drv->reconnect || gameport->drv->reconnect(gameport)) {
			FUNC0(gameport);
			FUNC1(gameport);
			/* Ok, old children are now gone, we are done */
			break;
		}
		gameport = gameport->child;
	} while (gameport);
}