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
struct input_event {int dummy; } ;
struct evdev_client {int head; int /*<<< orphan*/  fasync; int /*<<< orphan*/  buffer_lock; struct input_event* buffer; } ;

/* Variables and functions */
 int EVDEV_BUFFER_SIZE ; 
 int /*<<< orphan*/  POLL_IN ; 
 int /*<<< orphan*/  SIGIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct evdev_client *client,
			     struct input_event *event)
{
	/*
	 * Interrupts are disabled, just acquire the lock
	 */
	FUNC1(&client->buffer_lock);
	client->buffer[client->head++] = *event;
	client->head &= EVDEV_BUFFER_SIZE - 1;
	FUNC2(&client->buffer_lock);

	FUNC0(&client->fasync, SIGIO, POLL_IN);
}