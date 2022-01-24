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
struct videobuf_queue {scalar_t__ type; int /*<<< orphan*/ ** bufs; } ;
struct v4l2_buffer {scalar_t__ type; size_t index; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t VIDEO_MAX_FRAME ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct videobuf_queue*) ; 
 int /*<<< orphan*/  FUNC3 (struct videobuf_queue*) ; 
 int /*<<< orphan*/  FUNC4 (struct videobuf_queue*,struct v4l2_buffer*,int /*<<< orphan*/ *,scalar_t__) ; 

int FUNC5(struct videobuf_queue *q, struct v4l2_buffer *b)
{
	int ret = -EINVAL;

	FUNC2(q);
	if (FUNC1(b->type != q->type)) {
		FUNC0(1, "querybuf: Wrong type.\n");
		goto done;
	}
	if (FUNC1(b->index >= VIDEO_MAX_FRAME)) {
		FUNC0(1, "querybuf: index out of range.\n");
		goto done;
	}
	if (FUNC1(NULL == q->bufs[b->index])) {
		FUNC0(1, "querybuf: buffer is null.\n");
		goto done;
	}

	FUNC4(q, b, q->bufs[b->index], q->type);

	ret = 0;
done:
	FUNC3(q);
	return ret;
}