#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct videobuf_queue {TYPE_2__** bufs; TYPE_1__* int_ops; } ;
typedef  enum v4l2_memory { ____Placeholder_v4l2_memory } v4l2_memory ;
struct TYPE_4__ {unsigned int i; int memory; unsigned int bsize; unsigned int boff; int /*<<< orphan*/  input; } ;
struct TYPE_3__ {int /*<<< orphan*/  magic; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAGIC_QTYPE_OPS ; 
 unsigned int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  UNSET ; 
#define  V4L2_MEMORY_MMAP 130 
#define  V4L2_MEMORY_OVERLAY 129 
#define  V4L2_MEMORY_USERPTR 128 
 int FUNC2 (struct videobuf_queue*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,unsigned int,unsigned int) ; 
 TYPE_2__* FUNC4 (struct videobuf_queue*) ; 

int FUNC5(struct videobuf_queue *q,
			unsigned int bcount, unsigned int bsize,
			enum v4l2_memory memory)
{
	unsigned int i;
	int err;

	FUNC0(q->int_ops->magic, MAGIC_QTYPE_OPS);

	err = FUNC2(q);
	if (0 != err)
		return err;

	/* Allocate and initialize buffers */
	for (i = 0; i < bcount; i++) {
		q->bufs[i] = FUNC4(q);

		if (NULL == q->bufs[i])
			break;

		q->bufs[i]->i      = i;
		q->bufs[i]->input  = UNSET;
		q->bufs[i]->memory = memory;
		q->bufs[i]->bsize  = bsize;
		switch (memory) {
		case V4L2_MEMORY_MMAP:
			q->bufs[i]->boff = FUNC1(bsize) * i;
			break;
		case V4L2_MEMORY_USERPTR:
		case V4L2_MEMORY_OVERLAY:
			/* nothing */
			break;
		}
	}

	if (!i)
		return -ENOMEM;

	FUNC3(1, "mmap setup: %d buffers, %d bytes each\n", i, bsize);

	return i;
}