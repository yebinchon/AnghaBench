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
struct mapped_device {int /*<<< orphan*/  wait; int /*<<< orphan*/  queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EINTR ; 
 int TASK_INTERRUPTIBLE ; 
 int TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int FUNC8(struct mapped_device *md, int interruptible)
{
	int r = 0;
	FUNC0(wait, current);

	FUNC2(md->queue);

	FUNC1(&md->wait, &wait);

	while (1) {
		FUNC6(interruptible);

		if (!FUNC4(md))
			break;

		if (interruptible == TASK_INTERRUPTIBLE &&
		    FUNC7(current)) {
			r = -EINTR;
			break;
		}

		FUNC3();
	}
	FUNC6(TASK_RUNNING);

	FUNC5(&md->wait, &wait);

	return r;
}