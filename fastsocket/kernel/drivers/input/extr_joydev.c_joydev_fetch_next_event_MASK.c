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
struct js_event {int dummy; } ;
struct joydev_client {int head; int tail; int /*<<< orphan*/  buffer_lock; struct js_event* buffer; } ;

/* Variables and functions */
 int JOYDEV_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct joydev_client *client,
				   struct js_event *event)
{
	int have_event;

	FUNC0(&client->buffer_lock);

	have_event = client->head != client->tail;
	if (have_event) {
		*event = client->buffer[client->tail++];
		client->tail &= JOYDEV_BUFFER_SIZE - 1;
	}

	FUNC1(&client->buffer_lock);

	return have_event;
}