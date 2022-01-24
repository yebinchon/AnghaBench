#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct videobuf_queue {int /*<<< orphan*/  vb_lock; TYPE_2__** bufs; TYPE_1__* ops; } ;
struct TYPE_6__ {scalar_t__ memory; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* buf_release ) (struct videobuf_queue*,TYPE_2__*) ;} ;

/* Variables and functions */
 scalar_t__ V4L2_MEMORY_MMAP ; 
 int VIDEO_MAX_FRAME ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (struct videobuf_queue*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (struct videobuf_queue*) ; 

__attribute__((used)) static void FUNC6(struct videobuf_queue *vbq)
{
	int i;

	FUNC1(&vbq->vb_lock);

	for (i = 0; i < VIDEO_MAX_FRAME; i++) {
		if (NULL == vbq->bufs[i])
			continue;
		if (V4L2_MEMORY_MMAP != vbq->bufs[i]->memory)
			continue;
		vbq->ops->buf_release(vbq, vbq->bufs[i]);
		FUNC3(vbq->bufs[i]);
		FUNC0(vbq->bufs[i]);
		vbq->bufs[i] = NULL;
	}

	FUNC2(&vbq->vb_lock);

	FUNC5(vbq);
}