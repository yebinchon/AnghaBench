#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tty_struct {int dummy; } ;
struct moxa_board_conf {unsigned int numPorts; TYPE_2__* ports; int /*<<< orphan*/ * basemem; scalar_t__ ready; } ;
struct TYPE_3__ {int flags; } ;
struct TYPE_4__ {TYPE_1__ port; } ;

/* Variables and functions */
 int ASYNC_INITIALIZED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  moxa_lock ; 
 int /*<<< orphan*/  moxa_openlock ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC8 (struct tty_struct*) ; 
 struct tty_struct* FUNC9 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC10(struct moxa_board_conf *brd)
{
	unsigned int a, opened;

	FUNC3(&moxa_openlock);
	FUNC5(&moxa_lock);
	brd->ready = 0;
	FUNC6(&moxa_lock);

	/* pci hot-un-plug support */
	for (a = 0; a < brd->numPorts; a++)
		if (brd->ports[a].port.flags & ASYNC_INITIALIZED) {
			struct tty_struct *tty = FUNC9(
						&brd->ports[a].port);
			if (tty) {
				FUNC7(tty);
				FUNC8(tty);
			}
		}
	while (1) {
		opened = 0;
		for (a = 0; a < brd->numPorts; a++)
			if (brd->ports[a].port.flags & ASYNC_INITIALIZED)
				opened++;
		FUNC4(&moxa_openlock);
		if (!opened)
			break;
		FUNC2(50);
		FUNC3(&moxa_openlock);
	}

	FUNC0(brd->basemem);
	brd->basemem = NULL;
	FUNC1(brd->ports);
}