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
struct rng_info {int /*<<< orphan*/  rfd; } ;
struct iovec {int dummy; } ;
struct TYPE_3__ {struct rng_info* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct virtqueue*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct iovec*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct iovec*,unsigned int) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct iovec*,unsigned int) ; 
 unsigned int FUNC6 (struct virtqueue*,struct iovec*,unsigned int*,unsigned int*) ; 

__attribute__((used)) static void FUNC7(struct virtqueue *vq)
{
	int len;
	unsigned int head, in_num, out_num, totlen = 0;
	struct rng_info *rng_info = vq->dev->priv;
	struct iovec iov[vq->vring.num];

	/* First we need a buffer from the Guests's virtqueue. */
	head = FUNC6(vq, iov, &out_num, &in_num);
	if (out_num)
		FUNC2(1, "Output buffers in rng?");

	/*
	 * Just like the console write, we loop to cover the whole iovec.
	 * In this case, short reads actually happen quite a bit.
	 */
	while (!FUNC4(iov, in_num)) {
		len = FUNC5(rng_info->rfd, iov, in_num);
		if (len <= 0)
			FUNC1(1, "Read from /dev/random gave %i", len);
		FUNC3(iov, in_num, len);
		totlen += len;
	}

	/* Tell the Guest about the new input. */
	FUNC0(vq, head, totlen);
}