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
struct videobuf_queue {int /*<<< orphan*/  streaming; int /*<<< orphan*/  stream; int /*<<< orphan*/  wait; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct videobuf_queue*) ; 
 int /*<<< orphan*/  FUNC3 (struct videobuf_queue*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct videobuf_queue *q, int noblock)
{
	int retval;

checks:
	if (!q->streaming) {
		FUNC0(1, "next_buffer: Not streaming\n");
		retval = -EINVAL;
		goto done;
	}

	if (FUNC1(&q->stream)) {
		if (noblock) {
			retval = -EAGAIN;
			FUNC0(2, "next_buffer: no buffers to dequeue\n");
			goto done;
		} else {
			FUNC0(2, "next_buffer: waiting on buffer\n");

			/* Drop lock to avoid deadlock with qbuf */
			FUNC3(q);

			/* Checking list_empty and streaming is safe without
			 * locks because we goto checks to validate while
			 * holding locks before proceeding */
			retval = FUNC4(q->wait,
				!FUNC1(&q->stream) || !q->streaming);
			FUNC2(q);

			if (retval)
				goto done;

			goto checks;
		}
	}

	retval = 0;

done:
	return retval;
}