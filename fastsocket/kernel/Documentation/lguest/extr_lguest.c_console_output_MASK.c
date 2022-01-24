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
struct TYPE_2__ {int num; } ;
struct virtqueue {TYPE_1__ vring; } ;
struct iovec {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/  FUNC0 (struct virtqueue*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct iovec*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct iovec*,unsigned int) ; 
 unsigned int FUNC5 (struct virtqueue*,struct iovec*,unsigned int*,unsigned int*) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct iovec*,unsigned int) ; 

__attribute__((used)) static void FUNC7(struct virtqueue *vq)
{
	unsigned int head, out, in;
	struct iovec iov[vq->vring.num];

	/* We usually wait in here, for the Guest to give us something. */
	head = FUNC5(vq, iov, &out, &in);
	if (in)
		FUNC2(1, "Input buffers in console output queue?");

	/* writev can return a partial write, so we loop here. */
	while (!FUNC4(iov, out)) {
		int len = FUNC6(STDOUT_FILENO, iov, out);
		if (len <= 0)
			FUNC1(1, "Write to stdout gave %i", len);
		FUNC3(iov, out, len);
	}

	/*
	 * We're finished with that buffer: if we're going to sleep,
	 * wait_for_vq_desc() will prod the Guest with an interrupt.
	 */
	FUNC0(vq, head, 0);
}