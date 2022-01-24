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
struct service_processor {int /*<<< orphan*/  lock; TYPE_1__* event_buffer; } ;
struct event_reader {int /*<<< orphan*/  node; int /*<<< orphan*/  wait; int /*<<< orphan*/  next_serial_number; } ;
struct TYPE_2__ {int /*<<< orphan*/  readers; int /*<<< orphan*/  next_serial_number; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4(struct service_processor *sp, struct event_reader *reader)
{
	unsigned long flags;

	reader->next_serial_number = sp->event_buffer->next_serial_number;
	FUNC0(&reader->wait);
	FUNC2(&sp->lock, flags);
	FUNC1(&reader->node, &sp->event_buffer->readers);
	FUNC3(&sp->lock, flags);
}