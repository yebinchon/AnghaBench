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
struct ktstate {int (* fn ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  rendez; int /*<<< orphan*/  waitq; int /*<<< orphan*/  lock; int /*<<< orphan*/  id; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  PF_NOFREEZE ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int
FUNC12(void *vp)
{
	struct ktstate *k;
	FUNC0(wait, current);
	int more;

	k = vp;
	current->flags |= PF_NOFREEZE;
	FUNC8(current, -10);
	FUNC3(&k->rendez);	/* tell spawner we're running */
	do {
		FUNC9(k->lock);
		more = k->fn(k->id);
		if (!more) {
			FUNC2(k->waitq, &wait);
			FUNC1(TASK_INTERRUPTIBLE);
		}
		FUNC10(k->lock);
		if (!more) {
			FUNC7();
			FUNC6(k->waitq, &wait);
		} else
			FUNC4();
	} while (!FUNC5());
	FUNC3(&k->rendez);	/* tell spawner we're stopping */
	return 0;
}