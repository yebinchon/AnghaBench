#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  timeout_fn ;
struct TYPE_6__ {scalar_t__ reset; } ;
struct TYPE_5__ {unsigned long expires; int /*<<< orphan*/  function; } ;

/* Variables and functions */
 TYPE_4__* FDCS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__ fd_timer ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC4(unsigned long delay, timeout_fn function)
{
	if (FDCS->reset) {
		FUNC2();	/* do the reset during sleep to win time
				 * if we don't need to sleep, it's a good
				 * occasion anyways */
		return 1;
	}

	if (FUNC3(jiffies, delay)) {
		FUNC1(&fd_timer);
		fd_timer.function = function;
		fd_timer.expires = delay;
		FUNC0(&fd_timer);
		return 1;
	}
	return 0;
}