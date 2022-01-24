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
struct videobuf_queue {int /*<<< orphan*/  type; TYPE_1__* int_ops; } ;
struct videobuf_buffer {int state; int /*<<< orphan*/  stream; } ;
struct v4l2_buffer {int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  magic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct videobuf_queue*,int /*<<< orphan*/ ,struct videobuf_queue*,struct videobuf_buffer*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAGIC_QTYPE_OPS ; 
 int /*<<< orphan*/  V4L2_BUF_FLAG_DONE ; 
#define  VIDEOBUF_DONE 129 
#define  VIDEOBUF_ERROR 128 
 int VIDEOBUF_IDLE ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct v4l2_buffer*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct videobuf_queue*,struct videobuf_buffer**,int) ; 
 int /*<<< orphan*/  sync ; 
 int /*<<< orphan*/  FUNC6 (struct videobuf_queue*) ; 
 int /*<<< orphan*/  FUNC7 (struct videobuf_queue*) ; 
 int /*<<< orphan*/  FUNC8 (struct videobuf_queue*,struct v4l2_buffer*,struct videobuf_buffer*,int /*<<< orphan*/ ) ; 

int FUNC9(struct videobuf_queue *q,
		   struct v4l2_buffer *b, int nonblocking)
{
	struct videobuf_buffer *buf = NULL;
	int retval;

	FUNC1(q->int_ops->magic, MAGIC_QTYPE_OPS);

	FUNC4(b, 0, sizeof(*b));
	FUNC6(q);

	retval = FUNC5(q, &buf, nonblocking);
	if (retval < 0) {
		FUNC2(1, "dqbuf: next_buffer error: %i\n", retval);
		goto done;
	}

	switch (buf->state) {
	case VIDEOBUF_ERROR:
		FUNC2(1, "dqbuf: state is error\n");
		break;
	case VIDEOBUF_DONE:
		FUNC2(1, "dqbuf: state is done\n");
		break;
	default:
		FUNC2(1, "dqbuf: state invalid\n");
		retval = -EINVAL;
		goto done;
	}
	FUNC0(q, sync, q, buf);
	FUNC8(q, b, buf, q->type);
	FUNC3(&buf->stream);
	buf->state = VIDEOBUF_IDLE;
	b->flags &= ~V4L2_BUF_FLAG_DONE;
done:
	FUNC7(q);
	return retval;
}