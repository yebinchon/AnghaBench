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
struct queue_entry {int /*<<< orphan*/  last_action; struct data_queue* queue; } ;
struct data_queue {scalar_t__* index; scalar_t__ limit; int /*<<< orphan*/  index_lock; int /*<<< orphan*/  count; int /*<<< orphan*/  length; int /*<<< orphan*/  rt2x00dev; } ;
typedef  enum queue_index { ____Placeholder_queue_index } queue_index ;

/* Variables and functions */
 int Q_INDEX ; 
 int Q_INDEX_DONE ; 
 int Q_INDEX_MAX ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC3 (int) ; 

void FUNC4(struct queue_entry *entry, enum queue_index index)
{
	struct data_queue *queue = entry->queue;
	unsigned long irqflags;

	if (FUNC3(index >= Q_INDEX_MAX)) {
		FUNC0(queue->rt2x00dev,
			   "Index change on invalid index type (%d)\n", index);
		return;
	}

	FUNC1(&queue->index_lock, irqflags);

	queue->index[index]++;
	if (queue->index[index] >= queue->limit)
		queue->index[index] = 0;

	entry->last_action = jiffies;

	if (index == Q_INDEX) {
		queue->length++;
	} else if (index == Q_INDEX_DONE) {
		queue->length--;
		queue->count++;
	}

	FUNC2(&queue->index_lock, irqflags);
}