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
struct TYPE_4__ {int reset; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* redo ) () ;int /*<<< orphan*/  (* done ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_2__* FDCS ; 
 int /*<<< orphan*/  FUNC1 () ; 
 unsigned long FUNC2 () ; 
 TYPE_1__* cont ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  initialising ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (unsigned long) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 

__attribute__((used)) static void FUNC12(unsigned long data)
{
	unsigned long flags;

	if (!initialising)
		FUNC9();
	FUNC1();

	FUNC4();

	flags = FUNC2();
	FUNC3();
	FUNC8(flags);

	/* avoid dma going to a random drive after shutdown */

	if (!initialising)
		FUNC0("floppy timeout called\n");
	FDCS->reset = 1;
	if (cont) {
		cont->done(0);
		cont->redo();	/* this will recall reset when needed */
	} else {
		FUNC6("no cont in shutdown!\n");
		FUNC7();
	}
	FUNC5("floppy shutdown");
}