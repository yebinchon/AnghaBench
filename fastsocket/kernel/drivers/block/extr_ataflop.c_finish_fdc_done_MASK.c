#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  expires; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ NeedSeek ; 
 TYPE_1__ fd_timer ; 
 scalar_t__ fdc_busy ; 
 int /*<<< orphan*/  fdc_wait ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11( int dummy )
{
	unsigned long flags;

	FUNC0(("finish_fdc_done entered\n"));
	FUNC7();
	NeedSeek = 0;

	if (FUNC9(&fd_timer) && FUNC8(fd_timer.expires, jiffies + 5))
		/* If the check for a disk change is done too early after this
		 * last seek command, the WP bit still reads wrong :-((
		 */
		FUNC3(&fd_timer, jiffies + 5);
	else
		FUNC4();
	FUNC5();

	FUNC2(flags);
	FUNC6();
	fdc_busy = 0;
	FUNC10( &fdc_wait );
	FUNC1(flags);

	FUNC0(("finish_fdc() finished\n"));
}