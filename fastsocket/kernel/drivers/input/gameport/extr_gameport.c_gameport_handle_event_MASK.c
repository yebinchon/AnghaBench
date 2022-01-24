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
struct gameport_event {int type; int /*<<< orphan*/  object; } ;

/* Variables and functions */
#define  GAMEPORT_ATTACH_DRIVER 129 
#define  GAMEPORT_REGISTER_PORT 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gameport_event*) ; 
 struct gameport_event* FUNC3 () ; 
 int /*<<< orphan*/  gameport_mutex ; 
 int /*<<< orphan*/  FUNC4 (struct gameport_event*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(void)
{
	struct gameport_event *event;

	FUNC5(&gameport_mutex);

	/*
	 * Note that we handle only one event here to give swsusp
	 * a chance to freeze kgameportd thread. Gameport events
	 * should be pretty rare so we are not concerned about
	 * taking performance hit.
	 */
	if ((event = FUNC3())) {

		switch (event->type) {
			case GAMEPORT_REGISTER_PORT:
				FUNC0(event->object);
				break;

			case GAMEPORT_ATTACH_DRIVER:
				FUNC1(event->object);
				break;

			default:
				break;
		}

		FUNC4(event);
		FUNC2(event);
	}

	FUNC6(&gameport_mutex);
}