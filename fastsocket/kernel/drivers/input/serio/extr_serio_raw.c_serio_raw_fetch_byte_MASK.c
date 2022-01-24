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
struct serio_raw {size_t head; size_t tail; char* queue; TYPE_1__* serio; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int SERIO_RAW_QUEUE_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC2(struct serio_raw *serio_raw, char *c)
{
	unsigned long flags;
	int empty;

	FUNC0(&serio_raw->serio->lock, flags);

	empty = serio_raw->head == serio_raw->tail;
	if (!empty) {
		*c = serio_raw->queue[serio_raw->tail];
		serio_raw->tail = (serio_raw->tail + 1) % SERIO_RAW_QUEUE_LEN;
	}

	FUNC1(&serio_raw->serio->lock, flags);

	return !empty;
}