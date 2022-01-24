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
struct dm_bufio_client {int /*<<< orphan*/  free_buffer_wait; } ;
struct dm_buffer {int /*<<< orphan*/  state; scalar_t__ write_error; scalar_t__ read_error; int /*<<< orphan*/  hold_count; struct dm_bufio_client* c; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  B_DIRTY ; 
 int /*<<< orphan*/  B_READING ; 
 int /*<<< orphan*/  B_WRITING ; 
 int /*<<< orphan*/  FUNC1 (struct dm_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (struct dm_bufio_client*) ; 
 int /*<<< orphan*/  FUNC4 (struct dm_bufio_client*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct dm_buffer *b)
{
	struct dm_bufio_client *c = b->c;

	FUNC3(c);

	FUNC0(!b->hold_count);

	b->hold_count--;
	if (!b->hold_count) {
		FUNC6(&c->free_buffer_wait);

		/*
		 * If there were errors on the buffer, and the buffer is not
		 * to be written, free the buffer. There is no point in caching
		 * invalid buffer.
		 */
		if ((b->read_error || b->write_error) &&
		    !FUNC5(B_READING, &b->state) &&
		    !FUNC5(B_WRITING, &b->state) &&
		    !FUNC5(B_DIRTY, &b->state)) {
			FUNC2(b);
			FUNC1(b);
		}
	}

	FUNC4(c);
}