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
struct queue_entry {TYPE_1__* queue; scalar_t__ flags; } ;
struct TYPE_2__ {scalar_t__ qid; } ;

/* Variables and functions */
 scalar_t__ QID_RX ; 
 int /*<<< orphan*/  FUNC0 (struct queue_entry*,int /*<<< orphan*/ *) ; 

void FUNC1(struct queue_entry *entry)
{
	entry->flags = 0;

	if (entry->queue->qid == QID_RX)
		FUNC0(entry, NULL);
}