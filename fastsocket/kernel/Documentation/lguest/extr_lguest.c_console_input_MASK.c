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
struct TYPE_4__ {int num; } ;
struct virtqueue {TYPE_2__ vring; TYPE_1__* dev; } ;
struct timeval {scalar_t__ tv_sec; } ;
struct iovec {scalar_t__ iov_base; } ;
struct console_abort {int count; struct timeval start; } ;
struct TYPE_3__ {struct console_abort* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  FUNC0 (struct virtqueue*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct timeval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ ,struct iovec*,unsigned int) ; 
 unsigned int FUNC6 (struct virtqueue*,struct iovec*,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void FUNC8(struct virtqueue *vq)
{
	int len;
	unsigned int head, in_num, out_num;
	struct console_abort *abort = vq->dev->priv;
	struct iovec iov[vq->vring.num];

	/* Make sure there's a descriptor available. */
	head = FUNC6(vq, iov, &out_num, &in_num);
	if (out_num)
		FUNC1(1, "Output buffers in console in queue?");

	/* Read into it.  This is where we usually wait. */
	len = FUNC5(STDIN_FILENO, iov, in_num);
	if (len <= 0) {
		/* Ran out of input? */
		FUNC7("Failed to get console input, ignoring console.");
		/*
		 * For simplicity, dying threads kill the whole Launcher.  So
		 * just nap here.
		 */
		for (;;)
			FUNC4();
	}

	/* Tell the Guest we used a buffer. */
	FUNC0(vq, head, len);

	/*
	 * Three ^C within one second?  Exit.
	 *
	 * This is such a hack, but works surprisingly well.  Each ^C has to
	 * be in a buffer by itself, so they can't be too fast.  But we check
	 * that we get three within about a second, so they can't be too
	 * slow.
	 */
	if (len != 1 || ((char *)iov[0].iov_base)[0] != 3) {
		abort->count = 0;
		return;
	}

	abort->count++;
	if (abort->count == 1)
		FUNC2(&abort->start, NULL);
	else if (abort->count == 3) {
		struct timeval now;
		FUNC2(&now, NULL);
		/* Kill all Launcher processes with SIGINT, like normal ^C */
		if (now.tv_sec <= abort->start.tv_sec+1)
			FUNC3(0, SIGINT);
		abort->count = 0;
	}
}