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
struct nouveau_eventh {int /*<<< orphan*/  head; } ;
struct nouveau_event {int index_nr; int /*<<< orphan*/  lock; scalar_t__ toggle_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_event*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

void
FUNC6(struct nouveau_event *event, int index,
		  struct nouveau_eventh *handler)
{
	unsigned long flags;

	if (index >= event->index_nr)
		return;

	FUNC3(&event->lock, flags);
	FUNC0(&handler->head);

	if (event->toggle_lock)
		FUNC2(event->toggle_lock);
	FUNC1(event, index, 1);
	if (event->toggle_lock)
		FUNC4(event->toggle_lock);

	FUNC5(&event->lock, flags);
}