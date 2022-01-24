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
struct service_processor {struct event_buffer* event_buffer; } ;
struct ibmasm_event {scalar_t__ serial_number; } ;
struct event_buffer {int next_serial_number; int /*<<< orphan*/  readers; struct ibmasm_event* events; scalar_t__ next_index; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IBMASM_NUM_EVENTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct event_buffer* FUNC1 (int,int /*<<< orphan*/ ) ; 

int FUNC2(struct service_processor *sp)
{
	struct event_buffer *buffer;
	struct ibmasm_event *event;
	int i;

	buffer = FUNC1(sizeof(struct event_buffer), GFP_KERNEL);
	if (!buffer)
		return 1;

	buffer->next_index = 0;
	buffer->next_serial_number = 1;

	event = buffer->events;
	for (i=0; i<IBMASM_NUM_EVENTS; i++, event++)
		event->serial_number = 0;

	FUNC0(&buffer->readers);

	sp->event_buffer = buffer;

	return 0;
}