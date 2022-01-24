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
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; } ;
struct con3270 {scalar_t__ update_flags; TYPE_1__ view; scalar_t__ nr_up; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct con3270*) ; 
 int /*<<< orphan*/  FUNC1 (struct con3270*) ; 
 int /*<<< orphan*/  FUNC2 (struct con3270*) ; 
 int /*<<< orphan*/  FUNC3 (struct con3270*) ; 
 struct con3270* condev ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC7(void)
{
	struct con3270 *cp;
	unsigned long flags;

	cp = condev;
	if (!cp->view.dev)
		return;
	FUNC4(&cp->view);
	FUNC5(&cp->view.lock, flags);
	FUNC3(cp);
	cp->nr_up = 0;
	FUNC0(cp);
	FUNC2(cp);
	while (cp->update_flags != 0) {
		FUNC6(&cp->view.lock, flags);
		FUNC1(cp);
		FUNC5(&cp->view.lock, flags);
		FUNC3(cp);
	}
	FUNC6(&cp->view.lock, flags);
}