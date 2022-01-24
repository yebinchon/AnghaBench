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
struct TYPE_2__ {scalar_t__ expires; } ;
struct srmcons_private {int /*<<< orphan*/  lock; TYPE_1__ timer; scalar_t__ tty; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  srmcons_callback_lock ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

__attribute__((used)) static void
FUNC7(unsigned long data)
{
	struct srmcons_private *srmconsp = (struct srmcons_private *)data;
	unsigned long flags;
	int incr = 10;

	FUNC2(flags);
	if (FUNC4(&srmcons_callback_lock)) {
		if (!FUNC6(srmconsp->tty))
			incr = 100;
		FUNC5(&srmcons_callback_lock);
	} 

	FUNC3(&srmconsp->lock);
	if (srmconsp->tty) {
		srmconsp->timer.expires = jiffies + incr;
		FUNC0(&srmconsp->timer);
	}
	FUNC5(&srmconsp->lock);

	FUNC1(flags);
}